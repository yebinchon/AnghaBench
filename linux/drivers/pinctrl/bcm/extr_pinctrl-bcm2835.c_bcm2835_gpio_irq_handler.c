
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_desc {int dummy; } ;
struct irq_chip {int dummy; } ;
struct TYPE_2__ {int* parents; } ;
struct gpio_chip {TYPE_1__ irq; } ;
struct bcm2835_pinctrl {int dummy; } ;


 int BCM2835_NUM_IRQS ;
 int BUG () ;
 int bcm2835_gpio_irq_handle_bank (struct bcm2835_pinctrl*,int,int) ;
 int chained_irq_enter (struct irq_chip*,struct irq_desc*) ;
 int chained_irq_exit (struct irq_chip*,struct irq_desc*) ;
 struct bcm2835_pinctrl* gpiochip_get_data (struct gpio_chip*) ;
 struct irq_chip* irq_desc_get_chip (struct irq_desc*) ;
 struct gpio_chip* irq_desc_get_handler_data (struct irq_desc*) ;
 int irq_desc_get_irq (struct irq_desc*) ;

__attribute__((used)) static void bcm2835_gpio_irq_handler(struct irq_desc *desc)
{
 struct gpio_chip *chip = irq_desc_get_handler_data(desc);
 struct bcm2835_pinctrl *pc = gpiochip_get_data(chip);
 struct irq_chip *host_chip = irq_desc_get_chip(desc);
 int irq = irq_desc_get_irq(desc);
 int group;
 int i;

 for (i = 0; i < BCM2835_NUM_IRQS; i++) {
  if (chip->irq.parents[i] == irq) {
   group = i;
   break;
  }
 }

 if (i == BCM2835_NUM_IRQS)
  BUG();

 chained_irq_enter(host_chip, desc);

 switch (group) {
 case 0:
  bcm2835_gpio_irq_handle_bank(pc, 0, 0x0fffffff);
  break;
 case 1:
  bcm2835_gpio_irq_handle_bank(pc, 0, 0xf0000000);
  bcm2835_gpio_irq_handle_bank(pc, 1, 0x00003fff);
  break;
 case 2:
  bcm2835_gpio_irq_handle_bank(pc, 1, 0x003fc000);
  break;
 }

 chained_irq_exit(host_chip, desc);
}
