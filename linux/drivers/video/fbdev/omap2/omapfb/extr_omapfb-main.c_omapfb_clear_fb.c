
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int yres_virtual; int xres_virtual; } ;
struct fb_info {TYPE_1__ var; } ;
struct fb_fillrect {int rop; int color; int height; int width; int dy; int dx; } ;


 int ROP_COPY ;
 int cfb_fillrect (struct fb_info*,struct fb_fillrect const*) ;

__attribute__((used)) static void omapfb_clear_fb(struct fb_info *fbi)
{
 const struct fb_fillrect rect = {
  .dx = 0,
  .dy = 0,
  .width = fbi->var.xres_virtual,
  .height = fbi->var.yres_virtual,
  .color = 0,
  .rop = ROP_COPY,
 };

 cfb_fillrect(fbi, &rect);
}
