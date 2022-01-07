
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_device {int dev; } ;
struct imxfb_info {int pwmr; } ;


 struct imxfb_info* dev_get_drvdata (int *) ;

__attribute__((used)) static int imxfb_lcd_get_contrast(struct lcd_device *lcddev)
{
 struct imxfb_info *fbi = dev_get_drvdata(&lcddev->dev);

 return fbi->pwmr & 0xff;
}
