
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm2835_pinctrl {unsigned int* irq_type; } ;


 int EINVAL ;







__attribute__((used)) static int __bcm2835_gpio_irq_set_type_disabled(struct bcm2835_pinctrl *pc,
 unsigned offset, unsigned int type)
{
 switch (type) {
 case 128:
 case 131:
 case 132:
 case 133:
 case 130:
 case 129:
  pc->irq_type[offset] = type;
  break;

 default:
  return -EINVAL;
 }
 return 0;
}
