
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxafb_info {int lccr0; int reg_lccr3; int lccr3; scalar_t__ reg_lccr2; scalar_t__ reg_lccr1; } ;
struct fb_var_screeninfo {unsigned int yres; int sync; int lower_margin; int upper_margin; int vsync_len; int right_margin; int left_margin; int hsync_len; int xres; int pixclock; } ;


 int FB_SYNC_HOR_HIGH_ACT ;
 int FB_SYNC_VERT_HIGH_ACT ;
 int LCCR0_Dual ;
 int LCCR0_SDS ;
 scalar_t__ LCCR1_BegLnDel (int ) ;
 scalar_t__ LCCR1_DisWdth (int ) ;
 scalar_t__ LCCR1_EndLnDel (int ) ;
 scalar_t__ LCCR1_HorSnchWdth (int ) ;
 scalar_t__ LCCR2_BegFrmDel (int ) ;
 scalar_t__ LCCR2_DisHght (unsigned int) ;
 scalar_t__ LCCR2_EndFrmDel (int ) ;
 scalar_t__ LCCR2_VrtSnchWdth (int ) ;
 int LCCR3_HorSnchH ;
 int LCCR3_HorSnchL ;
 int LCCR3_PixClkDiv (unsigned int) ;
 int LCCR3_VrtSnchH ;
 int LCCR3_VrtSnchL ;
 unsigned int get_pcd (struct pxafb_info*,int ) ;
 int set_hsync_time (struct pxafb_info*,unsigned int) ;

__attribute__((used)) static void setup_parallel_timing(struct pxafb_info *fbi,
      struct fb_var_screeninfo *var)
{
 unsigned int lines_per_panel, pcd = get_pcd(fbi, var->pixclock);

 fbi->reg_lccr1 =
  LCCR1_DisWdth(var->xres) +
  LCCR1_HorSnchWdth(var->hsync_len) +
  LCCR1_BegLnDel(var->left_margin) +
  LCCR1_EndLnDel(var->right_margin);





 lines_per_panel = var->yres;
 if ((fbi->lccr0 & LCCR0_SDS) == LCCR0_Dual)
  lines_per_panel /= 2;

 fbi->reg_lccr2 =
  LCCR2_DisHght(lines_per_panel) +
  LCCR2_VrtSnchWdth(var->vsync_len) +
  LCCR2_BegFrmDel(var->upper_margin) +
  LCCR2_EndFrmDel(var->lower_margin);

 fbi->reg_lccr3 = fbi->lccr3 |
  (var->sync & FB_SYNC_HOR_HIGH_ACT ?
   LCCR3_HorSnchH : LCCR3_HorSnchL) |
  (var->sync & FB_SYNC_VERT_HIGH_ACT ?
   LCCR3_VrtSnchH : LCCR3_VrtSnchL);

 if (pcd) {
  fbi->reg_lccr3 |= LCCR3_PixClkDiv(pcd);
  set_hsync_time(fbi, pcd);
 }
}
