
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_device {int dev; } ;
struct imxfb_info {int lcd_pwr; } ;


 int FB_BLANK_POWERDOWN ;
 int FB_BLANK_UNBLANK ;
 int IS_ERR (int ) ;
 struct imxfb_info* dev_get_drvdata (int *) ;
 int regulator_is_enabled (int ) ;

__attribute__((used)) static int imxfb_lcd_get_power(struct lcd_device *lcddev)
{
 struct imxfb_info *fbi = dev_get_drvdata(&lcddev->dev);

 if (!IS_ERR(fbi->lcd_pwr) &&
     !regulator_is_enabled(fbi->lcd_pwr))
  return FB_BLANK_POWERDOWN;

 return FB_BLANK_UNBLANK;
}
