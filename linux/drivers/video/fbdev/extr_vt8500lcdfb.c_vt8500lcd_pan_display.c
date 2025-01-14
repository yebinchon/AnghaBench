
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vt8500lcd_info {scalar_t__ regbase; } ;
struct fb_var_screeninfo {unsigned int xoffset; unsigned int yoffset; } ;
struct TYPE_4__ {unsigned int xres_virtual; unsigned int xres; } ;
struct TYPE_3__ {unsigned int line_length; } ;
struct fb_info {TYPE_2__ var; TYPE_1__ fix; } ;


 struct vt8500lcd_info* to_vt8500lcd_info (struct fb_info*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int vt8500lcd_pan_display(struct fb_var_screeninfo *var,
    struct fb_info *info)
{
 unsigned pixlen = info->fix.line_length / info->var.xres_virtual;
 unsigned off = pixlen * var->xoffset
        + info->fix.line_length * var->yoffset;
 struct vt8500lcd_info *fbi = to_vt8500lcd_info(info);

 writel((1 << 31)
      | (((info->var.xres_virtual - info->var.xres) * pixlen / 4) << 20)
      | (off >> 2), fbi->regbase + 0x20);
 return 0;
}
