
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int GPE0A_PME_B0_VIRT_GPIO_PIN ;
 int bitmap_clear (unsigned long*,int ,int ) ;

__attribute__((used)) static void int0002_init_irq_valid_mask(struct gpio_chip *chip,
     unsigned long *valid_mask,
     unsigned int ngpios)
{
 bitmap_clear(valid_mask, 0, GPE0A_PME_B0_VIRT_GPIO_PIN);
}
