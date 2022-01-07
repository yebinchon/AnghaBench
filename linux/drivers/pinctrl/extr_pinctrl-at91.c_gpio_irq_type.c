
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int EINVAL ;



__attribute__((used)) static int gpio_irq_type(struct irq_data *d, unsigned type)
{
 switch (type) {
 case 128:
 case 129:
  return 0;
 default:
  return -EINVAL;
 }
}
