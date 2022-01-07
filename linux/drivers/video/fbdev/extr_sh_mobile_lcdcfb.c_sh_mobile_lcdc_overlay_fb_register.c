
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sh_mobile_lcdc_priv {int dev; } ;
struct sh_mobile_lcdc_overlay {int index; struct fb_info* info; TYPE_2__* channel; } ;
struct TYPE_3__ {int bits_per_pixel; int yres; int xres; } ;
struct fb_info {int dev; TYPE_1__ var; } ;
struct TYPE_4__ {struct sh_mobile_lcdc_priv* lcdc; } ;


 unsigned int ARRAY_SIZE (int *) ;
 int dev_info (int ,char*,int ,int ,int ,int ,int ) ;
 int dev_name (int ) ;
 int device_create_file (int ,int *) ;
 int * overlay_sysfs_attrs ;
 int register_framebuffer (struct fb_info*) ;

__attribute__((used)) static int
sh_mobile_lcdc_overlay_fb_register(struct sh_mobile_lcdc_overlay *ovl)
{
 struct sh_mobile_lcdc_priv *lcdc = ovl->channel->lcdc;
 struct fb_info *info = ovl->info;
 unsigned int i;
 int ret;

 if (info == ((void*)0))
  return 0;

 ret = register_framebuffer(info);
 if (ret < 0)
  return ret;

 dev_info(lcdc->dev, "registered %s/overlay %u as %dx%d %dbpp.\n",
   dev_name(lcdc->dev), ovl->index, info->var.xres,
   info->var.yres, info->var.bits_per_pixel);

 for (i = 0; i < ARRAY_SIZE(overlay_sysfs_attrs); ++i) {
  ret = device_create_file(info->dev, &overlay_sysfs_attrs[i]);
  if (ret < 0)
   return ret;
 }

 return 0;
}
