
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int bits_per_pixel; int xres; } ;
struct TYPE_3__ {int line_length; int visual; } ;
struct fb_info {TYPE_2__ var; TYPE_1__ fix; } ;


 int FB_VISUAL_PSEUDOCOLOR ;
 int FB_VISUAL_TRUECOLOR ;
 int lx_get_pitch (int ,int) ;
 int lx_set_mode (struct fb_info*) ;

__attribute__((used)) static int lxfb_set_par(struct fb_info *info)
{
 if (info->var.bits_per_pixel > 8)
  info->fix.visual = FB_VISUAL_TRUECOLOR;
 else
  info->fix.visual = FB_VISUAL_PSEUDOCOLOR;

 info->fix.line_length = lx_get_pitch(info->var.xres,
  info->var.bits_per_pixel);

 lx_set_mode(info);
 return 0;
}
