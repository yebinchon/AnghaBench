
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pm8xxx_pin_data {int mode; int output; int input; } ;
struct TYPE_4__ {TYPE_1__* pins; } ;
struct pm8xxx_mpp {TYPE_2__ desc; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_3__ {struct pm8xxx_pin_data* drv_data; } ;





 struct pm8xxx_mpp* gpiochip_get_data (struct gpio_chip*) ;
 int pm8xxx_mpp_update (struct pm8xxx_mpp*,struct pm8xxx_pin_data*) ;

__attribute__((used)) static int pm8xxx_mpp_direction_output(struct gpio_chip *chip,
     unsigned offset,
     int value)
{
 struct pm8xxx_mpp *pctrl = gpiochip_get_data(chip);
 struct pm8xxx_pin_data *pin = pctrl->desc.pins[offset].drv_data;

 switch (pin->mode) {
 case 129:
  pin->output = 1;
  break;
 case 130:
  pin->input = 0;
  pin->output = 1;
  break;
 case 128:
  pin->input = 0;
  pin->output = 1;
  break;
 }

 pm8xxx_mpp_update(pctrl, pin);

 return 0;
}
