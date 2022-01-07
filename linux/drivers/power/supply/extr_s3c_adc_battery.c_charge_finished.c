
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s3c_adc_bat {TYPE_1__* pdata; } ;
struct TYPE_2__ {int gpio_charge_finished; scalar_t__ gpio_inverted; } ;


 int gpio_get_value (int ) ;

__attribute__((used)) static int charge_finished(struct s3c_adc_bat *bat)
{
 return bat->pdata->gpio_inverted ?
  !gpio_get_value(bat->pdata->gpio_charge_finished) :
  gpio_get_value(bat->pdata->gpio_charge_finished);
}
