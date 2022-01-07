
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gab_platform_data {int gpio_inverted; int gpio_charge_finished; } ;
struct gab {struct gab_platform_data* pdata; } ;


 int gpio_get_value (int ) ;
 int gpio_is_valid (int ) ;

__attribute__((used)) static bool gab_charge_finished(struct gab *adc_bat)
{
 struct gab_platform_data *pdata = adc_bat->pdata;
 bool ret = gpio_get_value(pdata->gpio_charge_finished);
 bool inv = pdata->gpio_inverted;

 if (!gpio_is_valid(pdata->gpio_charge_finished))
  return 0;
 return ret ^ inv;
}
