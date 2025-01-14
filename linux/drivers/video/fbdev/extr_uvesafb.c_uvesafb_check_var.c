
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vbe_mode_ib {int bytes_per_scan_line; int mode_attr; } ;
struct uvesafb_par {scalar_t__ ypan; struct vbe_mode_ib* vbe_modes; } ;
struct TYPE_7__ {int length; } ;
struct TYPE_6__ {int length; } ;
struct TYPE_5__ {int length; } ;
struct fb_var_screeninfo {int bits_per_pixel; int yres; int vmode; int yres_virtual; int xres; int xres_virtual; TYPE_3__ blue; TYPE_2__ green; TYPE_1__ red; } ;
struct TYPE_8__ {int smem_len; } ;
struct fb_info {TYPE_4__ fix; struct uvesafb_par* par; } ;


 int EINVAL ;
 int FB_VMODE_DOUBLE ;
 int FB_VMODE_INTERLACED ;
 int UVESAFB_EXACT_RES ;
 int abs (int) ;
 int uvesafb_check_limits (struct fb_var_screeninfo*,struct fb_info*) ;
 int uvesafb_setup_var (struct fb_var_screeninfo*,struct fb_info*,struct vbe_mode_ib*) ;
 int uvesafb_vbe_find_mode (struct uvesafb_par*,int ,int,int,int ) ;

__attribute__((used)) static int uvesafb_check_var(struct fb_var_screeninfo *var,
  struct fb_info *info)
{
 struct uvesafb_par *par = info->par;
 struct vbe_mode_ib *mode = ((void*)0);
 int match = -1;
 int depth = var->red.length + var->green.length + var->blue.length;






 if (depth == 0 || abs(depth - var->bits_per_pixel) >= 8)
  depth = var->bits_per_pixel;

 match = uvesafb_vbe_find_mode(par, var->xres, var->yres, depth,
      UVESAFB_EXACT_RES);
 if (match == -1)
  return -EINVAL;

 mode = &par->vbe_modes[match];
 uvesafb_setup_var(var, info, mode);






 if (var->yres * mode->bytes_per_scan_line > info->fix.smem_len
      && info->fix.smem_len)
  return -EINVAL;

 if ((var->vmode & FB_VMODE_DOUBLE) &&
    !(par->vbe_modes[match].mode_attr & 0x100))
  var->vmode &= ~FB_VMODE_DOUBLE;

 if ((var->vmode & FB_VMODE_INTERLACED) &&
    !(par->vbe_modes[match].mode_attr & 0x200))
  var->vmode &= ~FB_VMODE_INTERLACED;

 uvesafb_check_limits(var, info);

 var->xres_virtual = var->xres;
 var->yres_virtual = (par->ypan) ?
    info->fix.smem_len / mode->bytes_per_scan_line :
    var->yres;
 return 0;
}
