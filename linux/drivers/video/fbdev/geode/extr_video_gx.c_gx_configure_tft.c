
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gxfb_par {int dummy; } ;
struct TYPE_2__ {unsigned long yres; int sync; } ;
struct fb_info {TYPE_1__ var; struct gxfb_par* par; } ;


 int FB_SYNC_HOR_HIGH_ACT ;
 int FB_SYNC_VERT_HIGH_ACT ;
 int FP_DFC ;
 unsigned long FP_DFC_NFI ;
 int FP_PM ;
 unsigned long FP_PM_P ;
 int FP_PT1 ;
 unsigned long FP_PT1_VSIZE_MASK ;
 unsigned long FP_PT1_VSIZE_SHIFT ;
 int FP_PT2 ;
 unsigned long FP_PT2_HSP ;
 unsigned long FP_PT2_VSP ;
 int MSR_GX_MSR_PADSEL ;
 unsigned long MSR_GX_MSR_PADSEL_MASK ;
 unsigned long MSR_GX_MSR_PADSEL_TFT ;
 int VP_DCFG ;
 unsigned long VP_DCFG_FP_DATA_EN ;
 unsigned long VP_DCFG_FP_PWR_EN ;
 int rdmsrl (int ,unsigned long) ;
 unsigned long read_fp (struct gxfb_par*,int ) ;
 unsigned long read_vp (struct gxfb_par*,int ) ;
 int write_fp (struct gxfb_par*,int ,unsigned long) ;
 int write_vp (struct gxfb_par*,int ,unsigned long) ;
 int wrmsrl (int ,unsigned long) ;

__attribute__((used)) static void
gx_configure_tft(struct fb_info *info)
{
 struct gxfb_par *par = info->par;
 unsigned long val;
 unsigned long fp;



 rdmsrl(MSR_GX_MSR_PADSEL, val);
 val &= ~MSR_GX_MSR_PADSEL_MASK;
 val |= MSR_GX_MSR_PADSEL_TFT;
 wrmsrl(MSR_GX_MSR_PADSEL, val);



 fp = read_fp(par, FP_PM);
 fp &= ~FP_PM_P;
 write_fp(par, FP_PM, fp);



 fp = read_fp(par, FP_PT1);
 fp &= FP_PT1_VSIZE_MASK;
 fp |= info->var.yres << FP_PT1_VSIZE_SHIFT;
 write_fp(par, FP_PT1, fp);




 fp = 0x0F100000;



 if (!(info->var.sync & FB_SYNC_VERT_HIGH_ACT))
  fp |= FP_PT2_VSP;

 if (!(info->var.sync & FB_SYNC_HOR_HIGH_ACT))
  fp |= FP_PT2_HSP;

 write_fp(par, FP_PT2, fp);


 write_fp(par, FP_DFC, FP_DFC_NFI);



 fp = read_vp(par, VP_DCFG);
 fp |= VP_DCFG_FP_PWR_EN | VP_DCFG_FP_DATA_EN;
 write_vp(par, VP_DCFG, fp);



 fp = read_fp(par, FP_PM);
 fp |= FP_PM_P;
 write_fp(par, FP_PM, fp);
}
