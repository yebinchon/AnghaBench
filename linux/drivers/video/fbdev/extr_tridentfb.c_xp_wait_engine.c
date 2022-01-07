
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tridentfb_par {int dummy; } ;


 int STATUS ;
 int cpu_relax () ;
 int t_inb (struct tridentfb_par*,int ) ;
 int t_outb (struct tridentfb_par*,int,int ) ;

__attribute__((used)) static void xp_wait_engine(struct tridentfb_par *par)
{
 int count = 0;
 int timeout = 0;

 while (t_inb(par, STATUS) & 0x80) {
  count++;
  if (count == 10000000) {

   count = 9990000;
   timeout++;
   if (timeout == 8) {

    t_outb(par, 0x00, STATUS);
    return;
   }
  }
  cpu_relax();
 }
}
