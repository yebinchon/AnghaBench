
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm2835_pinctrl {unsigned int* irq_type; } ;


 int EINVAL ;






 int bcm2835_gpio_irq_config (struct bcm2835_pinctrl*,unsigned int,int) ;

__attribute__((used)) static int __bcm2835_gpio_irq_set_type_enabled(struct bcm2835_pinctrl *pc,
 unsigned offset, unsigned int type)
{
 switch (type) {
 case 128:
  if (pc->irq_type[offset] != type) {
   bcm2835_gpio_irq_config(pc, offset, 0);
   pc->irq_type[offset] = type;
  }
  break;

 case 131:
  if (pc->irq_type[offset] == 133) {

   pc->irq_type[offset] = 132;
   bcm2835_gpio_irq_config(pc, offset, 0);
   pc->irq_type[offset] = type;
  } else if (pc->irq_type[offset] != type) {
   bcm2835_gpio_irq_config(pc, offset, 0);
   pc->irq_type[offset] = type;
   bcm2835_gpio_irq_config(pc, offset, 1);
  }
  break;

 case 132:
  if (pc->irq_type[offset] == 133) {

   pc->irq_type[offset] = 131;
   bcm2835_gpio_irq_config(pc, offset, 0);
   pc->irq_type[offset] = type;
  } else if (pc->irq_type[offset] != type) {
   bcm2835_gpio_irq_config(pc, offset, 0);
   pc->irq_type[offset] = type;
   bcm2835_gpio_irq_config(pc, offset, 1);
  }
  break;

 case 133:
  if (pc->irq_type[offset] == 131) {

   pc->irq_type[offset] = 132;
   bcm2835_gpio_irq_config(pc, offset, 1);
   pc->irq_type[offset] = type;
  } else if (pc->irq_type[offset] == 132) {

   pc->irq_type[offset] = 131;
   bcm2835_gpio_irq_config(pc, offset, 1);
   pc->irq_type[offset] = type;
  } else if (pc->irq_type[offset] != type) {
   bcm2835_gpio_irq_config(pc, offset, 0);
   pc->irq_type[offset] = type;
   bcm2835_gpio_irq_config(pc, offset, 1);
  }
  break;

 case 130:
 case 129:
  if (pc->irq_type[offset] != type) {
   bcm2835_gpio_irq_config(pc, offset, 0);
   pc->irq_type[offset] = type;
   bcm2835_gpio_irq_config(pc, offset, 1);
  }
  break;

 default:
  return -EINVAL;
 }
 return 0;
}
