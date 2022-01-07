
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sh_mobile_lcdc_priv {int dev; } ;
struct sh_mobile_lcdc_overlay {int index; TYPE_2__* format; int yres_virtual; int xres_virtual; int yres; int xres; int pitch; int fb_size; int dma_handle; int fb_mem; struct fb_info* info; TYPE_1__* channel; } ;
struct fb_var_screeninfo {int grayscale; int bits_per_pixel; int activate; int yres_virtual; int xres_virtual; int yres; int xres; } ;
struct TYPE_6__ {int ypanstep; int xpanstep; int visual; int line_length; int smem_len; int smem_start; int id; } ;
struct fb_info {struct fb_var_screeninfo var; TYPE_3__ fix; struct sh_mobile_lcdc_overlay* par; int screen_base; int device; int * fbops; int flags; } ;
struct TYPE_5__ {int fourcc; int bpp; scalar_t__ yuv; } ;
struct TYPE_4__ {struct sh_mobile_lcdc_priv* lcdc; } ;


 int ENOMEM ;
 int FBINFO_FLAG_DEFAULT ;
 int FB_ACTIVATE_NOW ;
 int FB_VISUAL_FOURCC ;
 int FB_VISUAL_TRUECOLOR ;




 struct fb_info* framebuffer_alloc (int ,int ) ;
 int memset (struct fb_var_screeninfo*,int ,int) ;
 int sh_mobile_lcdc_overlay_check_var (struct fb_var_screeninfo*,struct fb_info*) ;
 TYPE_3__ sh_mobile_lcdc_overlay_fix ;
 int sh_mobile_lcdc_overlay_ops ;
 int snprintf (int ,int,char*,int) ;

__attribute__((used)) static int
sh_mobile_lcdc_overlay_fb_init(struct sh_mobile_lcdc_overlay *ovl)
{
 struct sh_mobile_lcdc_priv *priv = ovl->channel->lcdc;
 struct fb_var_screeninfo *var;
 struct fb_info *info;


 info = framebuffer_alloc(0, priv->dev);
 if (!info)
  return -ENOMEM;

 ovl->info = info;

 info->flags = FBINFO_FLAG_DEFAULT;
 info->fbops = &sh_mobile_lcdc_overlay_ops;
 info->device = priv->dev;
 info->screen_base = ovl->fb_mem;
 info->par = ovl;




 info->fix = sh_mobile_lcdc_overlay_fix;
 snprintf(info->fix.id, sizeof(info->fix.id),
   "SH Mobile LCDC Overlay %u", ovl->index);
 info->fix.smem_start = ovl->dma_handle;
 info->fix.smem_len = ovl->fb_size;
 info->fix.line_length = ovl->pitch;

 if (ovl->format->yuv)
  info->fix.visual = FB_VISUAL_FOURCC;
 else
  info->fix.visual = FB_VISUAL_TRUECOLOR;

 switch (ovl->format->fourcc) {
 case 131:
 case 129:
  info->fix.ypanstep = 2;

 case 130:
 case 128:
  info->fix.xpanstep = 2;
 }


 var = &info->var;
 memset(var, 0, sizeof(*var));
 var->xres = ovl->xres;
 var->yres = ovl->yres;
 var->xres_virtual = ovl->xres_virtual;
 var->yres_virtual = ovl->yres_virtual;
 var->activate = FB_ACTIVATE_NOW;




 if (!ovl->format->yuv)
  var->bits_per_pixel = ovl->format->bpp;
 else
  var->grayscale = ovl->format->fourcc;

 return sh_mobile_lcdc_overlay_check_var(var, info);
}
