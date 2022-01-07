
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int start; } ;
struct platform_device {int dev; } ;
struct TYPE_2__ {int smem_len; int smem_start; } ;
struct fb_info {int flags; int * par; int * pseudo_palette; int screen_size; TYPE_1__ fix; int * fbops; int screen_base; } ;


 int EBUSY ;
 int ENOMEM ;
 int FBINFO_DEFAULT ;
 int IORESOURCE_MEM ;
 int cobalt_lcd_fbops ;
 TYPE_1__ cobalt_lcdfb_fix ;
 int devm_ioremap (int *,int ,int ) ;
 int fb_info (struct fb_info*,char*) ;
 struct fb_info* framebuffer_alloc (int ,int *) ;
 int framebuffer_release (struct fb_info*) ;
 int lcd_clear (struct fb_info*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct fb_info*) ;
 int register_framebuffer (struct fb_info*) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int cobalt_lcdfb_probe(struct platform_device *dev)
{
 struct fb_info *info;
 struct resource *res;
 int retval;

 info = framebuffer_alloc(0, &dev->dev);
 if (!info)
  return -ENOMEM;

 res = platform_get_resource(dev, IORESOURCE_MEM, 0);
 if (!res) {
  framebuffer_release(info);
  return -EBUSY;
 }

 info->screen_size = resource_size(res);
 info->screen_base = devm_ioremap(&dev->dev, res->start,
      info->screen_size);
 if (!info->screen_base) {
  framebuffer_release(info);
  return -ENOMEM;
 }

 info->fbops = &cobalt_lcd_fbops;
 info->fix = cobalt_lcdfb_fix;
 info->fix.smem_start = res->start;
 info->fix.smem_len = info->screen_size;
 info->pseudo_palette = ((void*)0);
 info->par = ((void*)0);
 info->flags = FBINFO_DEFAULT;

 retval = register_framebuffer(info);
 if (retval < 0) {
  framebuffer_release(info);
  return retval;
 }

 platform_set_drvdata(dev, info);

 lcd_clear(info);

 fb_info(info, "Cobalt server LCD frame buffer device\n");

 return 0;
}
