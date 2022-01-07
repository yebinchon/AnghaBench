
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pmic_mpp_state {TYPE_3__* ctrl; } ;
struct pmic_mpp_pad {int irq; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_6__ {TYPE_2__* desc; } ;
struct TYPE_5__ {TYPE_1__* pins; } ;
struct TYPE_4__ {struct pmic_mpp_pad* drv_data; } ;


 struct pmic_mpp_state* gpiochip_get_data (struct gpio_chip*) ;

__attribute__((used)) static int pmic_mpp_to_irq(struct gpio_chip *chip, unsigned pin)
{
 struct pmic_mpp_state *state = gpiochip_get_data(chip);
 struct pmic_mpp_pad *pad;

 pad = state->ctrl->desc->pins[pin].drv_data;

 return pad->irq;
}
