
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ext_vpll_cntl; int pll_ext_cntl; int mclk_fb_div; int pll_gen_cntl; int pll_ref_div; int spll_cntl2; int sclk_fb_div; } ;
union aty_pll {TYPE_1__ ct; } ;
struct fb_info {struct atyfb_par* par; } ;
struct atyfb_par {scalar_t__ mclk_per; scalar_t__ xclk_per; } ;


 int EXT_VPLL_CNTL ;
 int MCLK_FB_DIV ;
 int PLL_EXT_CNTL ;
 int PLL_GEN_CNTL ;
 int PLL_REF_DIV ;
 int SCLK_FB_DIV ;
 int SPLL_CNTL2 ;
 int aty_st_pll_ct (int ,int ,struct atyfb_par*) ;
 int mdelay (int) ;

__attribute__((used)) static void aty_resume_pll_ct(const struct fb_info *info,
         union aty_pll *pll)
{
 struct atyfb_par *par = info->par;

 if (par->mclk_per != par->xclk_per) {







  aty_st_pll_ct(SCLK_FB_DIV, pll->ct.sclk_fb_div, par);
  aty_st_pll_ct(SPLL_CNTL2, pll->ct.spll_cntl2, par);




  mdelay(5);
 }

 aty_st_pll_ct(PLL_REF_DIV, pll->ct.pll_ref_div, par);
 aty_st_pll_ct(PLL_GEN_CNTL, pll->ct.pll_gen_cntl, par);
 aty_st_pll_ct(MCLK_FB_DIV, pll->ct.mclk_fb_div, par);
 aty_st_pll_ct(PLL_EXT_CNTL, pll->ct.pll_ext_cntl, par);
 aty_st_pll_ct(EXT_VPLL_CNTL, pll->ct.ext_vpll_cntl, par);
}
