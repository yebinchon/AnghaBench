
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm2835_pinctrl {int* irq_type; } ;


 int GPFEN0 ;
 int GPHEN0 ;
 int GPLEN0 ;
 int GPREN0 ;





 int __bcm2835_gpio_irq_config (struct bcm2835_pinctrl*,int ,unsigned int,int) ;

__attribute__((used)) static void bcm2835_gpio_irq_config(struct bcm2835_pinctrl *pc,
 unsigned offset, bool enable)
{
 switch (pc->irq_type[offset]) {
 case 130:
  __bcm2835_gpio_irq_config(pc, GPREN0, offset, enable);
  break;

 case 131:
  __bcm2835_gpio_irq_config(pc, GPFEN0, offset, enable);
  break;

 case 132:
  __bcm2835_gpio_irq_config(pc, GPREN0, offset, enable);
  __bcm2835_gpio_irq_config(pc, GPFEN0, offset, enable);
  break;

 case 129:
  __bcm2835_gpio_irq_config(pc, GPHEN0, offset, enable);
  break;

 case 128:
  __bcm2835_gpio_irq_config(pc, GPLEN0, offset, enable);
  break;
 }
}
