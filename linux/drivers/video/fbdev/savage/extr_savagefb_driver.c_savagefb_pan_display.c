
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct savagefb_par {int dummy; } ;
struct fb_var_screeninfo {int yoffset; int xoffset; } ;
struct TYPE_4__ {int bits_per_pixel; } ;
struct TYPE_3__ {int line_length; } ;
struct fb_info {TYPE_2__ var; TYPE_1__ fix; struct savagefb_par* par; } ;


 int savagefb_update_start (struct savagefb_par*,int) ;

__attribute__((used)) static int savagefb_pan_display(struct fb_var_screeninfo *var,
    struct fb_info *info)
{
 struct savagefb_par *par = info->par;
 int base;

 base = (var->yoffset * info->fix.line_length
      + (var->xoffset & ~1) * ((info->var.bits_per_pixel+7) / 8)) >> 2;

 savagefb_update_start(par, base);
 return 0;
}
