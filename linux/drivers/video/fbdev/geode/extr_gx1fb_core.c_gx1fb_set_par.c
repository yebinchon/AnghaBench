
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct geodefb_par {TYPE_1__* dc_ops; } ;
struct TYPE_5__ {int bits_per_pixel; int xres; } ;
struct TYPE_6__ {int line_length; int visual; } ;
struct fb_info {TYPE_2__ var; TYPE_3__ fix; struct geodefb_par* par; } ;
struct TYPE_4__ {int (* set_mode ) (struct fb_info*) ;} ;


 int FB_VISUAL_PSEUDOCOLOR ;
 int FB_VISUAL_TRUECOLOR ;
 int gx1_line_delta (int ,int) ;
 int stub1 (struct fb_info*) ;

__attribute__((used)) static int gx1fb_set_par(struct fb_info *info)
{
 struct geodefb_par *par = info->par;

 if (info->var.bits_per_pixel == 16)
  info->fix.visual = FB_VISUAL_TRUECOLOR;
 else
  info->fix.visual = FB_VISUAL_PSEUDOCOLOR;

 info->fix.line_length = gx1_line_delta(info->var.xres, info->var.bits_per_pixel);

 par->dc_ops->set_mode(info);

 return 0;
}
