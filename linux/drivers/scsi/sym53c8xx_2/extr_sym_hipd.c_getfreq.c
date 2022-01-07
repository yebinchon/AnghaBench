
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sym_hcb {int features; } ;


 int FE_C10 ;
 int GEN ;
 int INW (struct sym_hcb*,int ) ;
 int OUTB (struct sym_hcb*,int ,int) ;
 int OUTW (struct sym_hcb*,int ,int) ;
 int SIRQD ;
 int nc_dien ;
 int nc_istat1 ;
 int nc_scntl3 ;
 int nc_sien ;
 int nc_sist ;
 int nc_stime1 ;
 int printf (char*,char*,int,unsigned int,unsigned int) ;
 char* sym_name (struct sym_hcb*) ;
 int sym_verbose ;
 int udelay (int) ;

__attribute__((used)) static unsigned getfreq (struct sym_hcb *np, int gen)
{
 unsigned int ms = 0;
 unsigned int f;
 OUTW(np, nc_sien, 0);
 INW(np, nc_sist);
 OUTB(np, nc_dien, 0);
 INW(np, nc_sist);





 if (np->features & FE_C10) {
  OUTW(np, nc_sien, GEN);
  OUTB(np, nc_istat1, SIRQD);
 }
 OUTB(np, nc_scntl3, 4);
 OUTB(np, nc_stime1, 0);
 OUTB(np, nc_stime1, gen);
 while (!(INW(np, nc_sist) & GEN) && ms++ < 100000)
  udelay(1000/4);
 OUTB(np, nc_stime1, 0);



 if (np->features & FE_C10) {
  OUTW(np, nc_sien, 0);
  OUTB(np, nc_istat1, 0);
 }





  OUTB(np, nc_scntl3, 0);




 f = ms ? ((1 << gen) * (4340*4)) / ms : 0;





 if (np->features & FE_C10)
  f = (f * 2) / 3;

 if (sym_verbose >= 2)
  printf ("%s: Delay (GEN=%d): %u msec, %u KHz\n",
   sym_name(np), gen, ms/4, f);

 return f;
}
