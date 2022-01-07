
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct matrox_fb_info {int dummy; } ;


 scalar_t__ g450_cmppll (struct matrox_fb_info*,unsigned int,unsigned int) ;
 int g450_setpll (struct matrox_fb_info*,unsigned int,unsigned int) ;

void matroxfb_g450_setpll_cond(struct matrox_fb_info *minfo, unsigned int mnp,
          unsigned int pll)
{
 if (g450_cmppll(minfo, mnp, pll)) {
  g450_setpll(minfo, mnp, pll);
 }
}
