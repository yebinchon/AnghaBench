
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_desc {int dummy; } ;
struct device {int dummy; } ;


 int IRQF_TRIGGER_FALLING ;
 int IRQF_TRIGGER_RISING ;
 int dev_name (struct device*) ;
 int dev_warn (struct device*,char*,int) ;
 int devm_request_any_context_irq (struct device*,int,int ,int,int ,void*) ;
 int gpio_charger_irq ;
 int gpiod_to_irq (struct gpio_desc*) ;

__attribute__((used)) static int gpio_charger_get_irq(struct device *dev, void *dev_id,
    struct gpio_desc *gpio)
{
 int ret, irq = gpiod_to_irq(gpio);

 if (irq > 0) {
  ret = devm_request_any_context_irq(dev, irq, gpio_charger_irq,
         IRQF_TRIGGER_RISING |
         IRQF_TRIGGER_FALLING,
         dev_name(dev),
         dev_id);
  if (ret < 0) {
   dev_warn(dev, "Failed to request irq: %d\n", ret);
   irq = 0;
  }
 }

 return irq;
}
