
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_gpio_bank {int gpio_chip; } ;
struct irq_data {int hwirq; TYPE_1__* domain; } ;
struct TYPE_2__ {struct stm32_gpio_bank* host_data; } ;


 int gpiochip_unlock_as_irq (int *,int ) ;

__attribute__((used)) static void stm32_gpio_irq_release_resources(struct irq_data *irq_data)
{
 struct stm32_gpio_bank *bank = irq_data->domain->host_data;

 gpiochip_unlock_as_irq(&bank->gpio_chip, irq_data->hwirq);
}
