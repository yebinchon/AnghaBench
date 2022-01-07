
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_device {int dev; } ;
struct clps711x_fb_info {int lcd_pwr; } ;


 int FB_BLANK_NORMAL ;
 int FB_BLANK_UNBLANK ;
 int IS_ERR_OR_NULL (int ) ;
 struct clps711x_fb_info* dev_get_drvdata (int *) ;
 int regulator_is_enabled (int ) ;

__attribute__((used)) static int clps711x_lcd_get_power(struct lcd_device *lcddev)
{
 struct clps711x_fb_info *cfb = dev_get_drvdata(&lcddev->dev);

 if (!IS_ERR_OR_NULL(cfb->lcd_pwr))
  if (!regulator_is_enabled(cfb->lcd_pwr))
   return FB_BLANK_NORMAL;

 return FB_BLANK_UNBLANK;
}
