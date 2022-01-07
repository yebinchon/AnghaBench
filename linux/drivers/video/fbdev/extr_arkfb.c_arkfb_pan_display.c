
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct fb_var_screeninfo {int yoffset; int xoffset; } ;
struct TYPE_5__ {int bits_per_pixel; int xres_virtual; } ;
struct TYPE_4__ {int line_length; } ;
struct fb_info {TYPE_2__ var; TYPE_1__ fix; struct arkfb_info* par; } ;
struct TYPE_6__ {int vgabase; } ;
struct arkfb_info {TYPE_3__ state; } ;


 int ark_start_address_regs ;
 int svga_wcrt_multi (int ,int ,unsigned int) ;

__attribute__((used)) static int arkfb_pan_display(struct fb_var_screeninfo *var, struct fb_info *info)
{
 struct arkfb_info *par = info->par;
 unsigned int offset;


 if (info->var.bits_per_pixel == 0) {
  offset = (var->yoffset / 16) * (info->var.xres_virtual / 2)
         + (var->xoffset / 2);
  offset = offset >> 2;
 } else {
  offset = (var->yoffset * info->fix.line_length) +
    (var->xoffset * info->var.bits_per_pixel / 8);
  offset = offset >> ((info->var.bits_per_pixel == 4) ? 2 : 3);
 }


 svga_wcrt_multi(par->state.vgabase, ark_start_address_regs, offset);

 return 0;
}
