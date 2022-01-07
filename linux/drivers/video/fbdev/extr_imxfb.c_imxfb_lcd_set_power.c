
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_device {int dev; } ;
struct imxfb_info {int lcd_pwr; } ;


 int FB_BLANK_UNBLANK ;
 int IS_ERR (int ) ;
 struct imxfb_info* dev_get_drvdata (int *) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;

__attribute__((used)) static int imxfb_lcd_set_power(struct lcd_device *lcddev, int power)
{
 struct imxfb_info *fbi = dev_get_drvdata(&lcddev->dev);

 if (!IS_ERR(fbi->lcd_pwr)) {
  if (power == FB_BLANK_UNBLANK)
   return regulator_enable(fbi->lcd_pwr);
  else
   return regulator_disable(fbi->lcd_pwr);
 }

 return 0;
}
