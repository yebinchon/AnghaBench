
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ offset; int depth; int stride; int height; int width; int type; } ;
struct xenfb_info {int resize_dpy; int resize_lock; TYPE_3__ resize; } ;
struct TYPE_5__ {int bits_per_pixel; int yres; int xres; } ;
struct TYPE_4__ {int line_length; } ;
struct fb_info {TYPE_2__ var; TYPE_1__ fix; struct xenfb_info* par; } ;


 int XENFB_TYPE_RESIZE ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int xenfb_set_par(struct fb_info *info)
{
 struct xenfb_info *xenfb_info;
 unsigned long flags;

 xenfb_info = info->par;

 spin_lock_irqsave(&xenfb_info->resize_lock, flags);
 xenfb_info->resize.type = XENFB_TYPE_RESIZE;
 xenfb_info->resize.width = info->var.xres;
 xenfb_info->resize.height = info->var.yres;
 xenfb_info->resize.stride = info->fix.line_length;
 xenfb_info->resize.depth = info->var.bits_per_pixel;
 xenfb_info->resize.offset = 0;
 xenfb_info->resize_dpy = 1;
 spin_unlock_irqrestore(&xenfb_info->resize_lock, flags);
 return 0;
}
