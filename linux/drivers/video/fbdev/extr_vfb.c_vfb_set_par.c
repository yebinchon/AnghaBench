
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int bits_per_pixel; int xres_virtual; } ;
struct TYPE_3__ {int line_length; int visual; } ;
struct fb_info {TYPE_2__ var; TYPE_1__ fix; } ;


 int FB_VISUAL_MONO01 ;
 int FB_VISUAL_PSEUDOCOLOR ;
 int FB_VISUAL_TRUECOLOR ;
 int get_line_length (int ,int) ;

__attribute__((used)) static int vfb_set_par(struct fb_info *info)
{
 switch (info->var.bits_per_pixel) {
 case 1:
  info->fix.visual = FB_VISUAL_MONO01;
  break;
 case 8:
  info->fix.visual = FB_VISUAL_PSEUDOCOLOR;
  break;
 case 16:
 case 24:
 case 32:
  info->fix.visual = FB_VISUAL_TRUECOLOR;
  break;
 }

 info->fix.line_length = get_line_length(info->var.xres_virtual,
      info->var.bits_per_pixel);

 return 0;
}
