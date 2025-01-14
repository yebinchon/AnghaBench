
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pclk_m; int pclk_n; scalar_t__ pclk_p; } ;
struct imstt_par {TYPE_1__ init; } ;
typedef int __u32 ;



__attribute__((used)) static void
setclkMHz(struct imstt_par *par, __u32 MHz)
{
 __u32 clk_m, clk_n, x, stage, spilled;

 clk_m = clk_n = 0;
 stage = spilled = 0;
 for (;;) {
  switch (stage) {
   case 0:
    clk_m++;
    break;
   case 1:
    clk_n++;
    break;
  }
  x = 20 * (clk_m + 1) / (clk_n + 1);
  if (x == MHz)
   break;
  if (x > MHz) {
   spilled = 1;
   stage = 1;
  } else if (spilled && x < MHz) {
   stage = 0;
  }
 }

 par->init.pclk_m = clk_m;
 par->init.pclk_n = clk_n;
 par->init.pclk_p = 0;
}
