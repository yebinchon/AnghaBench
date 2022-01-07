
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gxt4500_par {int refclk_ps; int pll_m; int pll_pd1; int pll_pd2; int pll_n; } ;



__attribute__((used)) static int calc_pixclock(struct gxt4500_par *par)
{
 return par->refclk_ps * par->pll_m * par->pll_pd1 * par->pll_pd2
  / par->pll_n;
}
