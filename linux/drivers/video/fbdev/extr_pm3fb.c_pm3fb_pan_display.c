
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pm3_par {int base; } ;
struct fb_var_screeninfo {int const yoffset; scalar_t__ xoffset; } ;
struct TYPE_2__ {int xres; int bits_per_pixel; } ;
struct fb_info {TYPE_1__ var; struct pm3_par* par; } ;


 int PM3ScreenBase ;
 int PM3_WAIT (struct pm3_par*,int) ;
 int PM3_WRITE_REG (struct pm3_par*,int ,int ) ;
 int pm3fb_shift_bpp (int ,scalar_t__) ;

__attribute__((used)) static int pm3fb_pan_display(struct fb_var_screeninfo *var,
     struct fb_info *info)
{
 struct pm3_par *par = info->par;
 const u32 xres = (info->var.xres + 31) & ~31;

 par->base = pm3fb_shift_bpp(info->var.bits_per_pixel,
     (var->yoffset * xres)
     + var->xoffset);
 PM3_WAIT(par, 1);
 PM3_WRITE_REG(par, PM3ScreenBase, par->base);
 return 0;
}
