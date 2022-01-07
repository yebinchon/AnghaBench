
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sh_mobile_lcdc_priv {int dev; } ;
struct TYPE_4__ {int height; int width; } ;
struct sh_mobile_lcdc_chan {TYPE_2__* format; int yres_virtual; int xres_virtual; TYPE_1__ display; int pitch; int fb_size; int dma_handle; int pseudo_palette; int fb_mem; struct fb_info* info; struct sh_mobile_lcdc_priv* lcdc; } ;
struct fb_videomode {int dummy; } ;
struct fb_var_screeninfo {int grayscale; int bits_per_pixel; int activate; int yres_virtual; int xres_virtual; int height; int width; } ;
struct TYPE_6__ {int ypanstep; int xpanstep; int visual; int line_length; int smem_len; int smem_start; } ;
struct fb_info {struct fb_var_screeninfo var; TYPE_3__ fix; int cmap; int modelist; struct sh_mobile_lcdc_chan* par; int * pseudo_palette; int screen_base; int device; int * fbops; int flags; } ;
struct TYPE_5__ {int fourcc; int bpp; scalar_t__ yuv; } ;


 int ENOMEM ;
 int FBINFO_FLAG_DEFAULT ;
 int FB_ACTIVATE_NOW ;
 int FB_VISUAL_FOURCC ;
 int FB_VISUAL_TRUECOLOR ;
 int PALETTE_NR ;




 int dev_err (int ,char*) ;
 int fb_alloc_cmap (int *,int ,int ) ;
 int fb_videomode_to_modelist (struct fb_videomode const*,unsigned int,int *) ;
 int fb_videomode_to_var (struct fb_var_screeninfo*,struct fb_videomode const*) ;
 struct fb_info* framebuffer_alloc (int ,int ) ;
 int sh_mobile_lcdc_check_var (struct fb_var_screeninfo*,struct fb_info*) ;
 TYPE_3__ sh_mobile_lcdc_fix ;
 int sh_mobile_lcdc_ops ;

__attribute__((used)) static int
sh_mobile_lcdc_channel_fb_init(struct sh_mobile_lcdc_chan *ch,
          const struct fb_videomode *modes,
          unsigned int num_modes)
{
 struct sh_mobile_lcdc_priv *priv = ch->lcdc;
 struct fb_var_screeninfo *var;
 struct fb_info *info;
 int ret;




 info = framebuffer_alloc(0, priv->dev);
 if (!info)
  return -ENOMEM;

 ch->info = info;

 info->flags = FBINFO_FLAG_DEFAULT;
 info->fbops = &sh_mobile_lcdc_ops;
 info->device = priv->dev;
 info->screen_base = ch->fb_mem;
 info->pseudo_palette = &ch->pseudo_palette;
 info->par = ch;

 fb_videomode_to_modelist(modes, num_modes, &info->modelist);

 ret = fb_alloc_cmap(&info->cmap, PALETTE_NR, 0);
 if (ret < 0) {
  dev_err(priv->dev, "unable to allocate cmap\n");
  return ret;
 }




 info->fix = sh_mobile_lcdc_fix;
 info->fix.smem_start = ch->dma_handle;
 info->fix.smem_len = ch->fb_size;
 info->fix.line_length = ch->pitch;

 if (ch->format->yuv)
  info->fix.visual = FB_VISUAL_FOURCC;
 else
  info->fix.visual = FB_VISUAL_TRUECOLOR;

 switch (ch->format->fourcc) {
 case 131:
 case 129:
  info->fix.ypanstep = 2;

 case 130:
 case 128:
  info->fix.xpanstep = 2;
 }




 var = &info->var;
 fb_videomode_to_var(var, modes);
 var->width = ch->display.width;
 var->height = ch->display.height;
 var->xres_virtual = ch->xres_virtual;
 var->yres_virtual = ch->yres_virtual;
 var->activate = FB_ACTIVATE_NOW;




 if (!ch->format->yuv)
  var->bits_per_pixel = ch->format->bpp;
 else
  var->grayscale = ch->format->fourcc;

 ret = sh_mobile_lcdc_check_var(var, info);
 if (ret)
  return ret;

 return 0;
}
