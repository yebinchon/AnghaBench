
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct lxfb_par {int output; } ;
struct TYPE_2__ {int sync; } ;
struct fb_info {TYPE_1__ var; struct lxfb_par* par; } ;


 int FB_SYNC_HOR_HIGH_ACT ;
 int FB_SYNC_VERT_HIGH_ACT ;
 int FP_DFC ;
 int FP_DFC_BC ;
 int FP_PM ;
 int FP_PM_P ;
 int FP_PT1 ;
 int FP_PT2 ;
 int FP_PT2_HSP ;
 int FP_PT2_SCRC ;
 int FP_PT2_VSP ;
 int MSR_LX_MSR_PADSEL ;
 int MSR_LX_MSR_PADSEL_TFT_SEL_HIGH ;
 int MSR_LX_MSR_PADSEL_TFT_SEL_LOW ;
 int OUTPUT_CRT ;
 int OUTPUT_PANEL ;
 int VP_DCFG ;
 int VP_DCFG_CRT_EN ;
 int VP_DCFG_CRT_HSYNC_POL ;
 int VP_DCFG_CRT_SYNC_SKW ;
 int VP_DCFG_CRT_SYNC_SKW_DEFAULT ;
 int VP_DCFG_CRT_VSYNC_POL ;
 int VP_DCFG_DAC_BL_EN ;
 int VP_DCFG_GV_GAM ;
 int VP_DCFG_HSYNC_EN ;
 int VP_DCFG_PWR_SEQ_DELAY ;
 int VP_DCFG_PWR_SEQ_DELAY_DEFAULT ;
 int VP_DCFG_VSYNC_EN ;
 int VP_MISC ;
 int VP_MISC_APWRDN ;
 int VP_MISC_DACPWRDN ;
 int VP_VRR ;
 int read_fp (struct lxfb_par*,int ) ;
 int read_vp (struct lxfb_par*,int ) ;
 int write_fp (struct lxfb_par*,int ,int) ;
 int write_vp (struct lxfb_par*,int ,int) ;
 int wrmsr (int ,int,int) ;

__attribute__((used)) static void lx_graphics_enable(struct fb_info *info)
{
 struct lxfb_par *par = info->par;
 u32 temp, config;


 write_vp(par, VP_VRR, 0);



 config = read_vp(par, VP_DCFG);

 config &= ~(VP_DCFG_CRT_SYNC_SKW | VP_DCFG_PWR_SEQ_DELAY |
   VP_DCFG_CRT_HSYNC_POL | VP_DCFG_CRT_VSYNC_POL);

 config |= (VP_DCFG_CRT_SYNC_SKW_DEFAULT | VP_DCFG_PWR_SEQ_DELAY_DEFAULT
   | VP_DCFG_GV_GAM);

 if (info->var.sync & FB_SYNC_HOR_HIGH_ACT)
  config |= VP_DCFG_CRT_HSYNC_POL;

 if (info->var.sync & FB_SYNC_VERT_HIGH_ACT)
  config |= VP_DCFG_CRT_VSYNC_POL;

 if (par->output & OUTPUT_PANEL) {
  u32 msrlo, msrhi;

  write_fp(par, FP_PT1, 0);
  temp = FP_PT2_SCRC;

  if (!(info->var.sync & FB_SYNC_HOR_HIGH_ACT))
   temp |= FP_PT2_HSP;

  if (!(info->var.sync & FB_SYNC_VERT_HIGH_ACT))
   temp |= FP_PT2_VSP;

  write_fp(par, FP_PT2, temp);
  write_fp(par, FP_DFC, FP_DFC_BC);

  msrlo = MSR_LX_MSR_PADSEL_TFT_SEL_LOW;
  msrhi = MSR_LX_MSR_PADSEL_TFT_SEL_HIGH;

  wrmsr(MSR_LX_MSR_PADSEL, msrlo, msrhi);
 }

 if (par->output & OUTPUT_CRT) {
  config |= VP_DCFG_CRT_EN | VP_DCFG_HSYNC_EN |
    VP_DCFG_VSYNC_EN | VP_DCFG_DAC_BL_EN;
 }

 write_vp(par, VP_DCFG, config);



 if (par->output & OUTPUT_CRT) {
  temp = read_vp(par, VP_MISC);
  temp &= ~(VP_MISC_DACPWRDN | VP_MISC_APWRDN);
  write_vp(par, VP_MISC, temp);
 }


 if (par->output & OUTPUT_PANEL)
  write_fp(par, FP_PM, read_fp(par, FP_PM) | FP_PM_P);
}
