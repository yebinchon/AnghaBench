
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lcd_platform_data {int reset_delay; int (* reset ) (int ) ;int power_on_delay; int (* power_on ) (int ,int) ;} ;
struct TYPE_2__ {int brightness; } ;
struct backlight_device {TYPE_1__ props; } ;
struct ams369fg06 {int dev; int ld; struct backlight_device* bd; struct lcd_platform_data* lcd_pd; } ;


 int EINVAL ;
 int ams369fg06_gamma_ctl (struct ams369fg06*,int ) ;
 int ams369fg06_ldi_enable (struct ams369fg06*) ;
 int ams369fg06_ldi_init (struct ams369fg06*) ;
 int dev_err (int ,char*) ;
 int msleep (int ) ;
 int stub1 (int ,int) ;
 int stub2 (int ) ;

__attribute__((used)) static int ams369fg06_power_on(struct ams369fg06 *lcd)
{
 int ret = 0;
 struct lcd_platform_data *pd;
 struct backlight_device *bd;

 pd = lcd->lcd_pd;
 bd = lcd->bd;

 if (pd->power_on) {
  pd->power_on(lcd->ld, 1);
  msleep(pd->power_on_delay);
 }

 if (!pd->reset) {
  dev_err(lcd->dev, "reset is NULL.\n");
  return -EINVAL;
 }

 pd->reset(lcd->ld);
 msleep(pd->reset_delay);

 ret = ams369fg06_ldi_init(lcd);
 if (ret) {
  dev_err(lcd->dev, "failed to initialize ldi.\n");
  return ret;
 }

 ret = ams369fg06_ldi_enable(lcd);
 if (ret) {
  dev_err(lcd->dev, "failed to enable ldi.\n");
  return ret;
 }


 ret = ams369fg06_gamma_ctl(lcd, bd->props.brightness);
 if (ret) {
  dev_err(lcd->dev, "lcd gamma setting failed.\n");
  return ret;
 }

 return 0;
}
