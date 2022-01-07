
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct radeonfb_info {scalar_t__ asleep; } ;
struct fb_var_screeninfo {int xoffset; int yoffset; } ;
struct TYPE_4__ {scalar_t__ xres; scalar_t__ xres_virtual; scalar_t__ yres; scalar_t__ yres_virtual; int bits_per_pixel; } ;
struct TYPE_3__ {int line_length; } ;
struct fb_info {TYPE_2__ var; TYPE_1__ fix; struct radeonfb_info* par; } ;


 int CRTC_OFFSET ;
 int EINVAL ;
 int OUTREG (int ,int) ;
 int radeon_fifo_wait (int) ;

__attribute__((used)) static int radeonfb_pan_display (struct fb_var_screeninfo *var,
                                 struct fb_info *info)
{
        struct radeonfb_info *rinfo = info->par;

 if ((var->xoffset + info->var.xres > info->var.xres_virtual)
     || (var->yoffset + info->var.yres > info->var.yres_virtual))
  return -EINVAL;

        if (rinfo->asleep)
         return 0;

 radeon_fifo_wait(2);
 OUTREG(CRTC_OFFSET, (var->yoffset * info->fix.line_length +
        var->xoffset * info->var.bits_per_pixel / 8) & ~7);
        return 0;
}
