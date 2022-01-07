
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pm8xxx_pin_data {int irq; int output_value; int input; } ;
struct TYPE_4__ {TYPE_1__* pins; } ;
struct pm8xxx_mpp {TYPE_2__ desc; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_3__ {struct pm8xxx_pin_data* drv_data; } ;


 int IRQCHIP_STATE_LINE_LEVEL ;
 struct pm8xxx_mpp* gpiochip_get_data (struct gpio_chip*) ;
 int irq_get_irqchip_state (int ,int ,int*) ;

__attribute__((used)) static int pm8xxx_mpp_get(struct gpio_chip *chip, unsigned offset)
{
 struct pm8xxx_mpp *pctrl = gpiochip_get_data(chip);
 struct pm8xxx_pin_data *pin = pctrl->desc.pins[offset].drv_data;
 bool state;
 int ret;

 if (!pin->input)
  return !!pin->output_value;

 ret = irq_get_irqchip_state(pin->irq, IRQCHIP_STATE_LINE_LEVEL, &state);
 if (!ret)
  ret = !!state;

 return ret;
}
