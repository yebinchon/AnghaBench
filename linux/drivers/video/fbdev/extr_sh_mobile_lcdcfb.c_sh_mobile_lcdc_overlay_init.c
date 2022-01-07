
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sh_mobile_lcdc_overlay {int enabled; int alpha; int xres; int xres_virtual; int yres; int yres_virtual; int pitch; int fb_size; int fb_mem; int dma_handle; TYPE_3__* cfg; struct sh_mobile_lcdc_format_info const* format; scalar_t__ pos_y; scalar_t__ pos_x; scalar_t__ rop3; int mode; TYPE_2__* channel; } ;
struct sh_mobile_lcdc_format_info {int bpp; int yuv; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int max_xres; int max_yres; int fourcc; } ;
struct TYPE_5__ {TYPE_1__* lcdc; } ;
struct TYPE_4__ {struct device* dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int LCDC_OVERLAY_BLEND ;
 int dev_err (struct device*,char*,...) ;
 int dma_alloc_coherent (struct device*,int,int *,int ) ;
 struct sh_mobile_lcdc_format_info* sh_mobile_format_info (int ) ;
 int sh_mobile_lcdc_overlay_fb_init (struct sh_mobile_lcdc_overlay*) ;

__attribute__((used)) static int
sh_mobile_lcdc_overlay_init(struct sh_mobile_lcdc_overlay *ovl)
{
 const struct sh_mobile_lcdc_format_info *format;
 struct device *dev = ovl->channel->lcdc->dev;
 int ret;

 if (ovl->cfg->fourcc == 0)
  return 0;


 format = sh_mobile_format_info(ovl->cfg->fourcc);
 if (format == ((void*)0)) {
  dev_err(dev, "Invalid FOURCC %08x\n", ovl->cfg->fourcc);
  return -EINVAL;
 }

 ovl->enabled = 0;
 ovl->mode = LCDC_OVERLAY_BLEND;
 ovl->alpha = 255;
 ovl->rop3 = 0;
 ovl->pos_x = 0;
 ovl->pos_y = 0;




 ovl->format = format;
 ovl->xres = ovl->cfg->max_xres;
 ovl->xres_virtual = ovl->xres;
 ovl->yres = ovl->cfg->max_yres;
 ovl->yres_virtual = ovl->yres * 2;

 if (!format->yuv)
  ovl->pitch = ovl->xres_virtual * format->bpp / 8;
 else
  ovl->pitch = ovl->xres_virtual;


 ovl->fb_size = ovl->cfg->max_xres * ovl->cfg->max_yres
         * format->bpp / 8 * 2;
 ovl->fb_mem = dma_alloc_coherent(dev, ovl->fb_size, &ovl->dma_handle,
      GFP_KERNEL);
 if (!ovl->fb_mem) {
  dev_err(dev, "unable to allocate buffer\n");
  return -ENOMEM;
 }

 ret = sh_mobile_lcdc_overlay_fb_init(ovl);
 if (ret < 0)
  return ret;

 return 0;
}
