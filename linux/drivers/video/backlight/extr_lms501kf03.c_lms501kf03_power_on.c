
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lms501kf03 {int dev; int ld; struct lcd_platform_data* lcd_pd; } ;
struct lcd_platform_data {int reset_delay; int (* reset ) (int ) ;int power_on_delay; int (* power_on ) (int ,int) ;} ;


 int EINVAL ;
 int dev_err (int ,char*) ;
 int lms501kf03_ldi_enable (struct lms501kf03*) ;
 int lms501kf03_ldi_init (struct lms501kf03*) ;
 int msleep (int ) ;
 int stub1 (int ,int) ;
 int stub2 (int ) ;

__attribute__((used)) static int lms501kf03_power_on(struct lms501kf03 *lcd)
{
 int ret = 0;
 struct lcd_platform_data *pd;

 pd = lcd->lcd_pd;

 if (!pd->power_on) {
  dev_err(lcd->dev, "power_on is NULL.\n");
  return -EINVAL;
 }

 pd->power_on(lcd->ld, 1);
 msleep(pd->power_on_delay);

 if (!pd->reset) {
  dev_err(lcd->dev, "reset is NULL.\n");
  return -EINVAL;
 }

 pd->reset(lcd->ld);
 msleep(pd->reset_delay);

 ret = lms501kf03_ldi_init(lcd);
 if (ret) {
  dev_err(lcd->dev, "failed to initialize ldi.\n");
  return ret;
 }

 ret = lms501kf03_ldi_enable(lcd);
 if (ret) {
  dev_err(lcd->dev, "failed to enable ldi.\n");
  return ret;
 }

 return 0;
}
