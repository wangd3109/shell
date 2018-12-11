awk '{print $1}' nDOS0 >e
for i in `seq 1 1 130`
do
	awk '{print $2+$3+$4}' nDOS$i >$i # s+p+d for each atom
done
	paste e `seq 101 1 130` >Co # 30 Co atoms
	paste e `seq 1 1 60` > O # 60 O atoms
	paste e `seq 61 1 80` >Ti
	paste e `seq 81 1 100` >Sr
	paste e `seq 1 1 130` >all
	awk '{print $2+$3+$4+$5+$6+$7+$8+$9+$10+$11+$12+$13+$14+$15+$16+$17+$18+$19+$20+$21+$22+$23+$24+$25+$26+$27+$20+$29+$30+$31}' Co > Co_total # add all electron for Co atoms
	awk '{print $2+$3+$4+$5+$6+$7+$8+$9+$10+$11+$12+$13+$14+$15+$16+$17+$18+$19+$20+$21+$22+$23+$24+$25+$26+$27+$28+$29+$30+$31+$32+$33+$34+$35+$36+$37+$38+$39+$40+$41+$42+$43+$44+$45+$46+$47+$48+$49+$50+$51+$52+$53+$54+$55+$56+$57+$58+$59+$60+$61}' O > O_total
	awk '{print $2+$3+$4+$5+$6+$7+$8+$9+$10+$11+$12+$13+$14+$15+$16+$17+$18+$19+$20+$21}' Ti > Ti_total
	awk '{print $2+$3+$4+$5+$6+$7+$8+$9+$10+$11+$12+$13+$14+$15+$16+$17+$18+$19+$20+$21}' Sr > Sr_total
	awk '{print $2+$3+$4+$5+$6+$7+$8+$9+$10+$11+$12+$13+$14+$15+$16+$17+$18+$19+$20+$21+$22+$23+$24+$25+$26+$27+$28+$29+$30+$31+$32+$33+$34+$35+$36+$37+$38+$39+$40+$41+$42+$43+$44+$45+$46+$47+$48+$49+$50+$51+$52+$53+$54+$55+$56+$57+$58+$59+$60+$61+$62+$63+$64+$65+$66+$67+$68+$69+$70+$71+$72+$73+$74+$75+$76+$77+$78+$79+$80+$81+$82+$83+$84+$85+$86+$87+$88+$89+$90+$91+$92+$93+$94+$95+$96+$97+$98+$99+$100+$101+$102+$103+$104+$105+$106+$107+$108+$109+$110+$111+$112+$113+$114+$115+$116+$117+$118+$119+$120+$121+$122+$123+$124+$125+$126+$127+$128+$129+$130+$131}' all >total_dos
	paste e Co_total O_total Ti_total Sr_total > Co+O+Ti+Sr
	awk '{print $2+$3+$4+$5}' Co+O+Ti+Sr > total_dos2
	paste e total_dos2 > total_dos2.txt
	paste e total_dos>total_dos.txt # total DOS
	paste e Co_total >Co.txt # PDOS for Co atoms, no s p d
	paste e O_total > O.txt
	paste e Ti_total >Ti.txt
	paste e Sr_total >Sr.txt

#	rm `seq 1 1 130` Co O Ti Sr all Co_total O_total Ti_total Sr_total total_dos
