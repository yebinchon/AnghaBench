
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct irq_data {int dummy; } ;
struct gpio_chip {int parent; } ;


 int disable_irq_wake (int) ;
 int enable_irq_wake (int) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct platform_device* to_platform_device (int ) ;

__attribute__((used)) static int int0002_irq_set_wake(struct irq_data *data, unsigned int on)
{
 struct gpio_chip *chip = irq_data_get_irq_chip_data(data);
 struct platform_device *pdev = to_platform_device(chip->parent);
 int irq = platform_get_irq(pdev, 0);


 if (on)
  enable_irq_wake(irq);
 else
  disable_irq_wake(irq);

 return 0;
}
