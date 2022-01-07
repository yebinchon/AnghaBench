
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sym_hcb {int multiplier; int features; } ;


 int DBLEN ;
 int DBLSEL ;
 int FE_LCKFRQ ;
 int HSC ;
 int INB (struct sym_hcb*,int ) ;
 int LCKFRQ ;
 int OUTB (struct sym_hcb*,int ,int) ;
 int nc_mbox1 ;
 int nc_scntl3 ;
 int nc_stest1 ;
 int nc_stest3 ;
 int nc_stest4 ;
 int printf (char*,char*) ;
 char* sym_name (struct sym_hcb*) ;
 int sym_verbose ;
 int udelay (int) ;

__attribute__((used)) static void sym_selectclock(struct sym_hcb *np, u_char scntl3)
{



 if (np->multiplier <= 1) {
  OUTB(np, nc_scntl3, scntl3);
  return;
 }

 if (sym_verbose >= 2)
  printf ("%s: enabling clock multiplier\n", sym_name(np));

 OUTB(np, nc_stest1, DBLEN);




 if (np->features & FE_LCKFRQ) {
  int i = 20;
  while (!(INB(np, nc_stest4) & LCKFRQ) && --i > 0)
   udelay(20);
  if (!i)
   printf("%s: the chip cannot lock the frequency\n",
    sym_name(np));
 } else {
  INB(np, nc_mbox1);
  udelay(50+10);
 }
 OUTB(np, nc_stest3, HSC);
 OUTB(np, nc_scntl3, scntl3);
 OUTB(np, nc_stest1, (DBLEN|DBLSEL));
 OUTB(np, nc_stest3, 0x00);
}
