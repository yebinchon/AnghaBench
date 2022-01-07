
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int bits_per_pixel; int xres_virtual; } ;
struct TYPE_3__ {int line_length; int visual; } ;
struct fb_info {TYPE_2__ var; TYPE_1__ fix; } ;


 int ALIGN (int,int ) ;
 int FB_VISUAL_PSEUDOCOLOR ;
 int FB_VISUAL_TRUECOLOR ;
 int VIA_PITCH_SIZE ;

__attribute__((used)) static void viafb_update_fix(struct fb_info *info)
{
 u32 bpp = info->var.bits_per_pixel;

 info->fix.visual =
  bpp == 8 ? FB_VISUAL_PSEUDOCOLOR : FB_VISUAL_TRUECOLOR;
 info->fix.line_length = ALIGN(info->var.xres_virtual * bpp / 8,
  VIA_PITCH_SIZE);
}
