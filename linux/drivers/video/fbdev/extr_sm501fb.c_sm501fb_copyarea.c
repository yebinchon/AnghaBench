
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sm_addr; } ;
struct sm501fb_par {TYPE_1__ screen; struct sm501fb_info* info; } ;
struct sm501fb_info {scalar_t__ regs2d; } ;
struct TYPE_4__ {int xres_virtual; int yres_virtual; int xres; int bits_per_pixel; } ;
struct fb_info {TYPE_2__ var; struct sm501fb_par* par; } ;
struct fb_copyarea {int width; int height; int sx; int sy; int dx; int dy; } ;


 scalar_t__ SM501_2D_COLOR_COMPARE_MASK ;
 scalar_t__ SM501_2D_CONTROL ;
 scalar_t__ SM501_2D_DESTINATION ;
 scalar_t__ SM501_2D_DESTINATION_BASE ;
 scalar_t__ SM501_2D_DIMENSION ;
 scalar_t__ SM501_2D_MASK ;
 scalar_t__ SM501_2D_PITCH ;
 scalar_t__ SM501_2D_SOURCE ;
 scalar_t__ SM501_2D_SOURCE_BASE ;
 scalar_t__ SM501_2D_STRETCH ;
 scalar_t__ SM501_2D_WINDOW_WIDTH ;
 scalar_t__ sm501fb_sync (struct fb_info*) ;
 int smc501_writel (int,scalar_t__) ;

__attribute__((used)) static void sm501fb_copyarea(struct fb_info *info, const struct fb_copyarea *area)
{
 struct sm501fb_par *par = info->par;
 struct sm501fb_info *fbi = par->info;
 int width = area->width;
 int height = area->height;
 int sx = area->sx;
 int sy = area->sy;
 int dx = area->dx;
 int dy = area->dy;
 unsigned long rtl = 0;


 if ((sx >= info->var.xres_virtual) ||
     (sy >= info->var.yres_virtual))

  return;
 if ((sx + width) >= info->var.xres_virtual)
  width = info->var.xres_virtual - sx - 1;
 if ((sy + height) >= info->var.yres_virtual)
  height = info->var.yres_virtual - sy - 1;


 if ((dx >= info->var.xres_virtual) ||
     (dy >= info->var.yres_virtual))

  return;
 if ((dx + width) >= info->var.xres_virtual)
  width = info->var.xres_virtual - dx - 1;
 if ((dy + height) >= info->var.yres_virtual)
  height = info->var.yres_virtual - dy - 1;

 if ((sx < dx) || (sy < dy)) {
  rtl = 1 << 27;
  sx += width - 1;
  dx += width - 1;
  sy += height - 1;
  dy += height - 1;
 }

 if (sm501fb_sync(info))
  return;


 smc501_writel(par->screen.sm_addr, fbi->regs2d + SM501_2D_SOURCE_BASE);
 smc501_writel(par->screen.sm_addr,
   fbi->regs2d + SM501_2D_DESTINATION_BASE);


 smc501_writel((info->var.xres << 16) | info->var.xres,
        fbi->regs2d + SM501_2D_WINDOW_WIDTH);


 smc501_writel((info->var.xres_virtual << 16) | info->var.xres_virtual,
        fbi->regs2d + SM501_2D_PITCH);


 switch (info->var.bits_per_pixel) {
 case 8:
  smc501_writel(0, fbi->regs2d + SM501_2D_STRETCH);
  break;
 case 16:
  smc501_writel(0x00100000, fbi->regs2d + SM501_2D_STRETCH);
  break;
 case 32:
  smc501_writel(0x00200000, fbi->regs2d + SM501_2D_STRETCH);
  break;
 }


 smc501_writel(0xffffffff, fbi->regs2d + SM501_2D_COLOR_COMPARE_MASK);


 smc501_writel(0xffffffff, fbi->regs2d + SM501_2D_MASK);


 smc501_writel((sx << 16) | sy, fbi->regs2d + SM501_2D_SOURCE);
 smc501_writel((dx << 16) | dy, fbi->regs2d + SM501_2D_DESTINATION);


 smc501_writel((width << 16) | height, fbi->regs2d + SM501_2D_DIMENSION);


 smc501_writel(0x800000cc | rtl, fbi->regs2d + SM501_2D_CONTROL);
}
