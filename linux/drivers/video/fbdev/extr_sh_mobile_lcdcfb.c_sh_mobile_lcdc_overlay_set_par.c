
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sh_mobile_lcdc_overlay {int xres_virtual; int pitch; TYPE_3__* format; int yres_virtual; int yres; int xres; } ;
struct TYPE_5__ {int line_length; int visual; int type; } ;
struct TYPE_6__ {int xres_virtual; int yres_virtual; int yres; int xres; } ;
struct fb_info {TYPE_1__ fix; TYPE_2__ var; struct sh_mobile_lcdc_overlay* par; } ;
struct TYPE_7__ {int bpp; scalar_t__ yuv; } ;


 int FB_TYPE_FOURCC ;
 int FB_TYPE_PACKED_PIXELS ;
 int FB_VISUAL_FOURCC ;
 int FB_VISUAL_TRUECOLOR ;
 int sh_mobile_format_fourcc (TYPE_2__*) ;
 TYPE_3__* sh_mobile_format_info (int ) ;
 scalar_t__ sh_mobile_format_is_fourcc (TYPE_2__*) ;
 int sh_mobile_lcdc_overlay_setup (struct sh_mobile_lcdc_overlay*) ;

__attribute__((used)) static int sh_mobile_lcdc_overlay_set_par(struct fb_info *info)
{
 struct sh_mobile_lcdc_overlay *ovl = info->par;

 ovl->format =
  sh_mobile_format_info(sh_mobile_format_fourcc(&info->var));

 ovl->xres = info->var.xres;
 ovl->xres_virtual = info->var.xres_virtual;
 ovl->yres = info->var.yres;
 ovl->yres_virtual = info->var.yres_virtual;

 if (ovl->format->yuv)
  ovl->pitch = info->var.xres_virtual;
 else
  ovl->pitch = info->var.xres_virtual * ovl->format->bpp / 8;

 sh_mobile_lcdc_overlay_setup(ovl);

 info->fix.line_length = ovl->pitch;

 if (sh_mobile_format_is_fourcc(&info->var)) {
  info->fix.type = FB_TYPE_FOURCC;
  info->fix.visual = FB_VISUAL_FOURCC;
 } else {
  info->fix.type = FB_TYPE_PACKED_PIXELS;
  info->fix.visual = FB_VISUAL_TRUECOLOR;
 }

 return 0;
}
