
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct pm8xxx_pin_data {int mode; } ;
struct TYPE_4__ {TYPE_1__* pins; } ;
struct pm8xxx_gpio {TYPE_2__ desc; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_3__ {struct pm8xxx_pin_data* drv_data; } ;


 int PM8XXX_GPIO_MODE_INPUT ;
 struct pm8xxx_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int pm8xxx_write_bank (struct pm8xxx_gpio*,struct pm8xxx_pin_data*,int,int) ;

__attribute__((used)) static int pm8xxx_gpio_direction_input(struct gpio_chip *chip,
           unsigned offset)
{
 struct pm8xxx_gpio *pctrl = gpiochip_get_data(chip);
 struct pm8xxx_pin_data *pin = pctrl->desc.pins[offset].drv_data;
 u8 val;

 pin->mode = PM8XXX_GPIO_MODE_INPUT;
 val = pin->mode << 2;

 pm8xxx_write_bank(pctrl, pin, 1, val);

 return 0;
}
