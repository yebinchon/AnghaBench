
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int domain; } ;
struct gpio_chip {int parent; TYPE_1__ irq; } ;
typedef int irqreturn_t ;


 int GPE0A_PME_B0_STS_BIT ;
 int GPE0A_PME_B0_VIRT_GPIO_PIN ;
 int GPE0A_STS_PORT ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int generic_handle_irq (int ) ;
 int inl (int ) ;
 int irq_find_mapping (int ,int ) ;
 int pm_wakeup_hard_event (int ) ;

__attribute__((used)) static irqreturn_t int0002_irq(int irq, void *data)
{
 struct gpio_chip *chip = data;
 u32 gpe_sts_reg;

 gpe_sts_reg = inl(GPE0A_STS_PORT);
 if (!(gpe_sts_reg & GPE0A_PME_B0_STS_BIT))
  return IRQ_NONE;

 generic_handle_irq(irq_find_mapping(chip->irq.domain,
         GPE0A_PME_B0_VIRT_GPIO_PIN));

 pm_wakeup_hard_event(chip->parent);

 return IRQ_HANDLED;
}
