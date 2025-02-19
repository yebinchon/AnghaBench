
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct platform_device {int dev; } ;
struct TYPE_12__ {int mmio_len; int smem_len; unsigned short line_length; int id; void* smem_start; int visual; void* mmio_start; } ;
struct TYPE_10__ {int length; int offset; } ;
struct TYPE_9__ {int length; int offset; } ;
struct TYPE_8__ {int offset; int length; } ;
struct TYPE_7__ {int offset; int length; } ;
struct TYPE_11__ {int bits_per_pixel; unsigned short xres; unsigned short yres; unsigned short xres_virtual; unsigned short yres_virtual; TYPE_4__ transp; TYPE_3__ blue; TYPE_2__ green; TYPE_1__ red; } ;
struct fb_info {int flags; int cmap; TYPE_6__ fix; void* screen_base; int par; int pseudo_palette; TYPE_5__ var; int * fbops; } ;


 int ENODEV ;
 int ENOMEM ;
 int FBINFO_DEFAULT ;
 int FBINFO_HWACCEL_COPYAREA ;
 int FBINFO_HWACCEL_FILLRECT ;
 int FBINFO_HWACCEL_YPAN ;
 int FB_VISUAL_PSEUDOCOLOR ;
 int FB_VISUAL_TRUECOLOR ;
 void* HD64461_IO_OFFSET (int) ;
 int HD64461_LCDCLOR ;
 int HD64461_LDR3 ;
 int HD64461_LDVNDR ;
 int fb_alloc_cmap (int *,int,int ) ;
 int fb_dealloc_cmap (int *) ;
 scalar_t__ fb_get_options (char*,int *) ;
 int fb_info (struct fb_info*,char*,int ) ;
 unsigned short fb_readw (int ) ;
 struct fb_info* framebuffer_alloc (int,int *) ;
 int framebuffer_release (struct fb_info*) ;
 TYPE_6__ hitfb_fix ;
 int hitfb_ops ;
 TYPE_5__ hitfb_var ;
 int platform_set_drvdata (struct platform_device*,struct fb_info*) ;
 int register_framebuffer (struct fb_info*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int hitfb_probe(struct platform_device *dev)
{
 unsigned short lcdclor, ldr3, ldvndr;
 struct fb_info *info;
 int ret;

 if (fb_get_options("hitfb", ((void*)0)))
  return -ENODEV;

 hitfb_fix.mmio_start = HD64461_IO_OFFSET(0x1000);
 hitfb_fix.mmio_len = 0x1000;
 hitfb_fix.smem_start = HD64461_IO_OFFSET(0x02000000);
 hitfb_fix.smem_len = 512 * 1024;

 lcdclor = fb_readw(HD64461_LCDCLOR);
 ldvndr = fb_readw(HD64461_LDVNDR);
 ldr3 = fb_readw(HD64461_LDR3);

 switch (ldr3 & 15) {
 default:
 case 4:
  hitfb_var.bits_per_pixel = 8;
  hitfb_var.xres = lcdclor;
  break;
 case 8:
  hitfb_var.bits_per_pixel = 16;
  hitfb_var.xres = lcdclor / 2;
  break;
 }
 hitfb_fix.line_length = lcdclor;
 hitfb_fix.visual = (hitfb_var.bits_per_pixel == 8) ?
     FB_VISUAL_PSEUDOCOLOR : FB_VISUAL_TRUECOLOR;
 hitfb_var.yres = ldvndr + 1;
 hitfb_var.xres_virtual = hitfb_var.xres;
 hitfb_var.yres_virtual = hitfb_fix.smem_len / lcdclor;
 switch (hitfb_var.bits_per_pixel) {
 case 8:
  hitfb_var.red.offset = 0;
  hitfb_var.red.length = 8;
  hitfb_var.green.offset = 0;
  hitfb_var.green.length = 8;
  hitfb_var.blue.offset = 0;
  hitfb_var.blue.length = 8;
  hitfb_var.transp.offset = 0;
  hitfb_var.transp.length = 0;
  break;
 case 16:
  hitfb_var.red.offset = 11;
  hitfb_var.red.length = 5;
  hitfb_var.green.offset = 5;
  hitfb_var.green.length = 6;
  hitfb_var.blue.offset = 0;
  hitfb_var.blue.length = 5;
  hitfb_var.transp.offset = 0;
  hitfb_var.transp.length = 0;
  break;
 }

 info = framebuffer_alloc(sizeof(u32) * 16, &dev->dev);
 if (unlikely(!info))
  return -ENOMEM;

 info->fbops = &hitfb_ops;
 info->var = hitfb_var;
 info->fix = hitfb_fix;
 info->pseudo_palette = info->par;
 info->flags = FBINFO_DEFAULT | FBINFO_HWACCEL_YPAN |
  FBINFO_HWACCEL_FILLRECT | FBINFO_HWACCEL_COPYAREA;

 info->screen_base = (void *)hitfb_fix.smem_start;

 ret = fb_alloc_cmap(&info->cmap, 256, 0);
 if (unlikely(ret < 0))
  goto err_fb;

 ret = register_framebuffer(info);
 if (unlikely(ret < 0))
  goto err;

 platform_set_drvdata(dev, info);

 fb_info(info, "%s frame buffer device\n", info->fix.id);

 return 0;

err:
 fb_dealloc_cmap(&info->cmap);
err_fb:
 framebuffer_release(info);
 return ret;
}
