
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pixclock_div {int m; int n; int p; } ;


 unsigned int KHZ2PICOS (unsigned int) ;
 unsigned int PICOS2KHZ (unsigned int) ;

__attribute__((used)) static unsigned int mbxfb_get_pixclock(unsigned int pixclock_ps,
           struct pixclock_div *div)
{
 u8 m, n, p;
 unsigned int err = 0;
 unsigned int min_err = ~0x0;
 unsigned int clk;
 unsigned int best_clk = 0;
 unsigned int ref_clk = 13000;
 unsigned int pixclock;


 pixclock = PICOS2KHZ(pixclock_ps);
 for (m = 1; m < 64; m++) {
  for (n = 2; n < 8; n++) {
   for (p = 0; p < 8; p++) {
    clk = (ref_clk * m) / (n * (1 << p));
    err = (clk > pixclock) ? (clk - pixclock) :
     (pixclock - clk);
    if (err < min_err) {
     min_err = err;
     best_clk = clk;
     div->m = m;
     div->n = n;
     div->p = p;
    }
   }
  }
 }
 return KHZ2PICOS(best_clk);
}
