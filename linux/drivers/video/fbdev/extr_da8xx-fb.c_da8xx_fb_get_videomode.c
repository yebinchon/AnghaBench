
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct fb_videomode {int name; } ;
struct da8xx_lcdc_platform_data {int type; } ;


 int ARRAY_SIZE (struct fb_videomode*) ;
 int dev_err (int *,char*) ;
 struct da8xx_lcdc_platform_data* dev_get_platdata (int *) ;
 int dev_info (int *,char*,int ) ;
 struct fb_videomode* known_lcd_panels ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static struct fb_videomode *da8xx_fb_get_videomode(struct platform_device *dev)
{
 struct da8xx_lcdc_platform_data *fb_pdata = dev_get_platdata(&dev->dev);
 struct fb_videomode *lcdc_info;
 int i;

 for (i = 0, lcdc_info = known_lcd_panels;
  i < ARRAY_SIZE(known_lcd_panels); i++, lcdc_info++) {
  if (strcmp(fb_pdata->type, lcdc_info->name) == 0)
   break;
 }

 if (i == ARRAY_SIZE(known_lcd_panels)) {
  dev_err(&dev->dev, "no panel found\n");
  return ((void*)0);
 }
 dev_info(&dev->dev, "found %s panel\n", lcdc_info->name);

 return lcdc_info;
}
