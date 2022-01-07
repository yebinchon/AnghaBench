
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_device {int dev; } ;
struct fb_info {struct clps711x_fb_info* par; } ;
struct clps711x_fb_info {int dummy; } ;


 struct clps711x_fb_info* dev_get_drvdata (int *) ;

__attribute__((used)) static int clps711x_lcd_check_fb(struct lcd_device *lcddev, struct fb_info *fi)
{
 struct clps711x_fb_info *cfb = dev_get_drvdata(&lcddev->dev);

 return (!fi || fi->par == cfb) ? 1 : 0;
}
