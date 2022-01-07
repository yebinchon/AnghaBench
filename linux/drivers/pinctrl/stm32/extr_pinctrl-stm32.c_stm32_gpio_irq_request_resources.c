
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct stm32_pinctrl {int dev; } ;
struct TYPE_5__ {int parent; } ;
struct stm32_gpio_bank {TYPE_2__ gpio_chip; } ;
struct irq_data {int hwirq; TYPE_1__* domain; } ;
struct TYPE_4__ {struct stm32_gpio_bank* host_data; } ;


 int dev_err (int ,char*,int ) ;
 struct stm32_pinctrl* dev_get_drvdata (int ) ;
 int gpiochip_lock_as_irq (TYPE_2__*,int ) ;
 int stm32_gpio_direction_input (TYPE_2__*,int ) ;

__attribute__((used)) static int stm32_gpio_irq_request_resources(struct irq_data *irq_data)
{
 struct stm32_gpio_bank *bank = irq_data->domain->host_data;
 struct stm32_pinctrl *pctl = dev_get_drvdata(bank->gpio_chip.parent);
 int ret;

 ret = stm32_gpio_direction_input(&bank->gpio_chip, irq_data->hwirq);
 if (ret)
  return ret;

 ret = gpiochip_lock_as_irq(&bank->gpio_chip, irq_data->hwirq);
 if (ret) {
  dev_err(pctl->dev, "unable to lock HW IRQ %lu for IRQ\n",
   irq_data->hwirq);
  return ret;
 }

 return 0;
}
