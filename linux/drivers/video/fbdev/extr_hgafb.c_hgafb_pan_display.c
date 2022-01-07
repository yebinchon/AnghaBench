
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fb_var_screeninfo {int vmode; int yoffset; scalar_t__ xoffset; } ;
struct TYPE_2__ {int yres_virtual; scalar_t__ xres; scalar_t__ xres_virtual; scalar_t__ yres; } ;
struct fb_info {TYPE_1__ var; } ;


 int EINVAL ;
 int FB_VMODE_YWRAP ;
 int hga_pan (scalar_t__,int) ;

__attribute__((used)) static int hgafb_pan_display(struct fb_var_screeninfo *var,
        struct fb_info *info)
{
 if (var->vmode & FB_VMODE_YWRAP) {
  if (var->yoffset >= info->var.yres_virtual ||
      var->xoffset)
   return -EINVAL;
 } else {
  if (var->xoffset + info->var.xres > info->var.xres_virtual
   || var->yoffset + info->var.yres > info->var.yres_virtual
   || var->yoffset % 8)
   return -EINVAL;
 }

 hga_pan(var->xoffset, var->yoffset);
 return 0;
}
