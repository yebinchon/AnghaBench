
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int bits_per_pixel; } ;
struct fb_info {TYPE_1__ var; scalar_t__ par; } ;
struct fb_copyarea {int dy; int sy; int sx; int dx; int width; int height; } ;
struct TYPE_4__ {int dp_pix_width; } ;
struct atyfb_par {TYPE_2__ crtc; int accel_flags; scalar_t__ asleep; } ;


 int DP_PIX_WIDTH ;
 int DP_SRC ;
 int DST_CNTL ;
 int DST_LAST_PEL ;
 int DST_X_LEFT_TO_RIGHT ;
 int DST_Y_TOP_TO_BOTTOM ;
 int FRGD_SRC_BLIT ;
 int SRC_HEIGHT1_WIDTH1 ;
 int SRC_Y_X ;
 int aty_st_le32 (int ,int,struct atyfb_par*) ;
 int cfb_copyarea (struct fb_info*,struct fb_copyarea const*) ;
 int draw_rect (int,int,int,int,struct atyfb_par*) ;
 int rotation24bpp (int,int) ;
 int wait_for_fifo (int,struct atyfb_par*) ;

void atyfb_copyarea(struct fb_info *info, const struct fb_copyarea *area)
{
 struct atyfb_par *par = (struct atyfb_par *) info->par;
 u32 dy = area->dy, sy = area->sy, direction = DST_LAST_PEL;
 u32 sx = area->sx, dx = area->dx, width = area->width, rotation = 0;

 if (par->asleep)
  return;
 if (!area->width || !area->height)
  return;
 if (!par->accel_flags) {
  cfb_copyarea(info, area);
  return;
 }

 if (info->var.bits_per_pixel == 24) {


  sx *= 3;
  dx *= 3;
  width *= 3;
 }

 if (area->sy < area->dy) {
  dy += area->height - 1;
  sy += area->height - 1;
 } else
  direction |= DST_Y_TOP_TO_BOTTOM;

 if (sx < dx) {
  dx += width - 1;
  sx += width - 1;
 } else
  direction |= DST_X_LEFT_TO_RIGHT;

 if (info->var.bits_per_pixel == 24) {
  rotation = rotation24bpp(dx, direction);
 }

 wait_for_fifo(5, par);
 aty_st_le32(DP_PIX_WIDTH, par->crtc.dp_pix_width, par);
 aty_st_le32(DP_SRC, FRGD_SRC_BLIT, par);
 aty_st_le32(SRC_Y_X, (sx << 16) | sy, par);
 aty_st_le32(SRC_HEIGHT1_WIDTH1, (width << 16) | area->height, par);
 aty_st_le32(DST_CNTL, direction | rotation, par);
 draw_rect(dx, dy, width, area->height, par);
}
