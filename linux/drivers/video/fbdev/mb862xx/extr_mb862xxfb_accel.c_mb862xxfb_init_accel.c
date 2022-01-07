
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mb862xxfb_par {int dummy; } ;
struct TYPE_6__ {int accel; } ;
struct TYPE_4__ {int bits_per_pixel; } ;
struct fb_info {int flags; TYPE_3__ fix; TYPE_2__* fbops; TYPE_1__ var; struct mb862xxfb_par* par; } ;
struct TYPE_5__ {int fb_imageblit; int fb_copyarea; int fb_fillrect; } ;


 int FBINFO_HWACCEL_COPYAREA ;
 int FBINFO_HWACCEL_FILLRECT ;
 int FBINFO_HWACCEL_IMAGEBLIT ;
 int GC_L0EM ;
 int GDC_REG_DRAW_BASE ;
 int GDC_REG_MODE_MISC ;
 int GDC_REG_X_RESOLUTION ;
 int cfb_copyarea ;
 int cfb_fillrect ;
 int cfb_imageblit ;
 int disp ;
 int draw ;
 int mb86290fb_copyarea ;
 int mb86290fb_fillrect ;
 int mb86290fb_imageblit ;
 int outreg (int ,int ,int) ;

void mb862xxfb_init_accel(struct fb_info *info, int xres)
{
 struct mb862xxfb_par *par = info->par;

 if (info->var.bits_per_pixel == 32) {
  info->fbops->fb_fillrect = cfb_fillrect;
  info->fbops->fb_copyarea = cfb_copyarea;
  info->fbops->fb_imageblit = cfb_imageblit;
 } else {
  outreg(disp, GC_L0EM, 3);
  info->fbops->fb_fillrect = mb86290fb_fillrect;
  info->fbops->fb_copyarea = mb86290fb_copyarea;
  info->fbops->fb_imageblit = mb86290fb_imageblit;
 }
 outreg(draw, GDC_REG_DRAW_BASE, 0);
 outreg(draw, GDC_REG_MODE_MISC, 0x8000);
 outreg(draw, GDC_REG_X_RESOLUTION, xres);

 info->flags |=
     FBINFO_HWACCEL_COPYAREA | FBINFO_HWACCEL_FILLRECT |
     FBINFO_HWACCEL_IMAGEBLIT;
 info->fix.accel = 0xff;
}
