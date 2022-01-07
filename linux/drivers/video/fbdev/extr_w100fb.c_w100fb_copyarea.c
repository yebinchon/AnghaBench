
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gmc_brush_datatype; int gmc_rop3; } ;
union dp_gui_master_cntl_u {int val; TYPE_1__ f; } ;
typedef int u32 ;
struct fb_info {scalar_t__ state; int flags; } ;
struct fb_copyarea {int dx; int dy; int sx; int sy; int height; int width; } ;


 int FBINFO_HWACCEL_DISABLED ;
 scalar_t__ FBINFO_STATE_RUNNING ;
 int GMC_BRUSH_NONE ;
 int ROP3_SRCCOPY ;
 int cfb_copyarea (struct fb_info*,struct fb_copyarea const*) ;
 scalar_t__ mmDP_GUI_MASTER_CNTL ;
 scalar_t__ mmDST_WIDTH_HEIGHT ;
 scalar_t__ mmDST_Y_X ;
 scalar_t__ mmSRC_Y_X ;
 int readl (scalar_t__) ;
 scalar_t__ remapped_regs ;
 int w100_fifo_wait (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void w100fb_copyarea(struct fb_info *info,
                            const struct fb_copyarea *area)
{
 u32 dx = area->dx, dy = area->dy, sx = area->sx, sy = area->sy;
 u32 h = area->height, w = area->width;
 union dp_gui_master_cntl_u gmc;

 if (info->state != FBINFO_STATE_RUNNING)
  return;
 if (info->flags & FBINFO_HWACCEL_DISABLED) {
  cfb_copyarea(info, area);
  return;
 }

 gmc.val = readl(remapped_regs + mmDP_GUI_MASTER_CNTL);
 gmc.f.gmc_rop3 = ROP3_SRCCOPY;
 gmc.f.gmc_brush_datatype = GMC_BRUSH_NONE;
 w100_fifo_wait(1);
 writel(gmc.val, remapped_regs + mmDP_GUI_MASTER_CNTL);

 w100_fifo_wait(3);
 writel((sy << 16) | (sx & 0xffff), remapped_regs + mmSRC_Y_X);
 writel((dy << 16) | (dx & 0xffff), remapped_regs + mmDST_Y_X);
 writel((w << 16) | (h & 0xffff), remapped_regs + mmDST_WIDTH_HEIGHT);
}
