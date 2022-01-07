
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lms501kf03 {int ld; int dev; struct lcd_platform_data* lcd_pd; } ;
struct lcd_platform_data {int (* power_on ) (int ,int ) ;int power_off_delay; } ;


 int EIO ;
 int dev_err (int ,char*) ;
 int lms501kf03_ldi_disable (struct lms501kf03*) ;
 int msleep (int ) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static int lms501kf03_power_off(struct lms501kf03 *lcd)
{
 int ret = 0;
 struct lcd_platform_data *pd;

 pd = lcd->lcd_pd;

 ret = lms501kf03_ldi_disable(lcd);
 if (ret) {
  dev_err(lcd->dev, "lcd setting failed.\n");
  return -EIO;
 }

 msleep(pd->power_off_delay);

 pd->power_on(lcd->ld, 0);

 return 0;
}
