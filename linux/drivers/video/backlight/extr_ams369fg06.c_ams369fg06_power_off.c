
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_platform_data {int (* power_on ) (int ,int ) ;int power_off_delay; } ;
struct ams369fg06 {int ld; int dev; struct lcd_platform_data* lcd_pd; } ;


 int EIO ;
 int ams369fg06_ldi_disable (struct ams369fg06*) ;
 int dev_err (int ,char*) ;
 int msleep (int ) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static int ams369fg06_power_off(struct ams369fg06 *lcd)
{
 int ret;
 struct lcd_platform_data *pd;

 pd = lcd->lcd_pd;

 ret = ams369fg06_ldi_disable(lcd);
 if (ret) {
  dev_err(lcd->dev, "lcd setting failed.\n");
  return -EIO;
 }

 msleep(pd->power_off_delay);

 if (pd->power_on)
  pd->power_on(lcd->ld, 0);

 return 0;
}
