
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_device {int dev; } ;
struct imxfb_info {int dummy; } ;
struct fb_info {struct imxfb_info* par; } ;


 struct imxfb_info* dev_get_drvdata (int *) ;

__attribute__((used)) static int imxfb_lcd_check_fb(struct lcd_device *lcddev, struct fb_info *fi)
{
 struct imxfb_info *fbi = dev_get_drvdata(&lcddev->dev);

 if (!fi || fi->par == fbi)
  return 1;

 return 0;
}
