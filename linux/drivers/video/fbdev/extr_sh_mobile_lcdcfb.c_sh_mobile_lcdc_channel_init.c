
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct sh_mobile_lcdc_format_info {int bpp; int yuv; } ;
struct TYPE_9__ {int height; int width; } ;
struct sh_mobile_lcdc_chan_cfg {scalar_t__ fourcc; unsigned int num_modes; TYPE_7__* tx_dev; TYPE_2__ panel_cfg; struct fb_videomode* lcd_modes; } ;
struct fb_videomode {unsigned int yres; unsigned int xres; } ;
struct TYPE_10__ {struct fb_videomode mode; int height; int width; } ;
struct sh_mobile_lcdc_chan {unsigned int xres; unsigned int xres_virtual; int yres; int yres_virtual; int pitch; unsigned int fb_size; TYPE_6__* tx_dev; int * fb_mem; int dma_handle; TYPE_3__ display; int colorspace; struct sh_mobile_lcdc_format_info const* format; TYPE_1__* lcdc; struct sh_mobile_lcdc_chan_cfg* cfg; } ;
struct device {int dummy; } ;
struct TYPE_12__ {TYPE_4__* driver; } ;
struct TYPE_14__ {TYPE_5__ dev; } ;
struct TYPE_13__ {struct fb_videomode def_mode; struct sh_mobile_lcdc_chan* lcdc; } ;
struct TYPE_11__ {int owner; } ;
struct TYPE_8__ {struct device* dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned int MAX_XRES ;
 unsigned int MAX_YRES ;
 int V4L2_COLORSPACE_REC709 ;
 int V4L2_COLORSPACE_SRGB ;
 scalar_t__ V4L2_PIX_FMT_NV12 ;
 scalar_t__ V4L2_PIX_FMT_NV21 ;
 struct fb_videomode default_720p ;
 int dev_dbg (struct device*,char*,unsigned int,int) ;
 int dev_err (struct device*,char*,...) ;
 int dev_warn (struct device*,char*) ;
 int * dma_alloc_coherent (struct device*,unsigned int,int *,int ) ;
 TYPE_6__* platform_get_drvdata (TYPE_7__*) ;
 struct sh_mobile_lcdc_format_info* sh_mobile_format_info (scalar_t__) ;
 int sh_mobile_lcdc_channel_fb_init (struct sh_mobile_lcdc_chan*,struct fb_videomode const*,unsigned int) ;
 int try_module_get (int ) ;

__attribute__((used)) static int
sh_mobile_lcdc_channel_init(struct sh_mobile_lcdc_chan *ch)
{
 const struct sh_mobile_lcdc_format_info *format;
 const struct sh_mobile_lcdc_chan_cfg *cfg = ch->cfg;
 struct device *dev = ch->lcdc->dev;
 const struct fb_videomode *max_mode;
 const struct fb_videomode *mode;
 unsigned int num_modes;
 unsigned int max_size;
 unsigned int i;


 format = sh_mobile_format_info(cfg->fourcc);
 if (format == ((void*)0)) {
  dev_err(dev, "Invalid FOURCC %08x.\n", cfg->fourcc);
  return -EINVAL;
 }




 max_mode = ((void*)0);
 max_size = 0;

 for (i = 0, mode = cfg->lcd_modes; i < cfg->num_modes; i++, mode++) {
  unsigned int size = mode->yres * mode->xres;


  if ((cfg->fourcc == V4L2_PIX_FMT_NV12 ||
       cfg->fourcc == V4L2_PIX_FMT_NV21) && (mode->yres & 0x1)) {
   dev_err(dev, "yres must be multiple of 2 for "
    "YCbCr420 mode.\n");
   return -EINVAL;
  }

  if (size > max_size) {
   max_mode = mode;
   max_size = size;
  }
 }

 if (!max_size)
  max_size = MAX_XRES * MAX_YRES;
 else
  dev_dbg(dev, "Found largest videomode %ux%u\n",
   max_mode->xres, max_mode->yres);

 if (cfg->lcd_modes == ((void*)0)) {
  mode = &default_720p;
  num_modes = 1;
 } else {
  mode = cfg->lcd_modes;
  num_modes = cfg->num_modes;
 }




 ch->format = format;
 ch->xres = mode->xres;
 ch->xres_virtual = mode->xres;
 ch->yres = mode->yres;
 ch->yres_virtual = mode->yres * 2;

 if (!format->yuv) {
  ch->colorspace = V4L2_COLORSPACE_SRGB;
  ch->pitch = ch->xres_virtual * format->bpp / 8;
 } else {
  ch->colorspace = V4L2_COLORSPACE_REC709;
  ch->pitch = ch->xres_virtual;
 }

 ch->display.width = cfg->panel_cfg.width;
 ch->display.height = cfg->panel_cfg.height;
 ch->display.mode = *mode;


 ch->fb_size = max_size * format->bpp / 8 * 2;
 ch->fb_mem = dma_alloc_coherent(dev, ch->fb_size, &ch->dma_handle,
     GFP_KERNEL);
 if (ch->fb_mem == ((void*)0)) {
  dev_err(dev, "unable to allocate buffer\n");
  return -ENOMEM;
 }


 if (cfg->tx_dev) {
  if (!cfg->tx_dev->dev.driver ||
      !try_module_get(cfg->tx_dev->dev.driver->owner)) {
   dev_warn(dev, "unable to get transmitter device\n");
   return -EINVAL;
  }
  ch->tx_dev = platform_get_drvdata(cfg->tx_dev);
  ch->tx_dev->lcdc = ch;
  ch->tx_dev->def_mode = *mode;
 }

 return sh_mobile_lcdc_channel_fb_init(ch, mode, num_modes);
}
