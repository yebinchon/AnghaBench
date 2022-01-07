
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct irq_data {int dummy; } ;
struct irq_chip {char* name; int irq_set_type; int irq_set_wake; int irq_unmask; void* irq_mask; void* irq_disable; int irq_ack; } ;
struct gpio_chip {int dummy; } ;
struct at91_gpio_chip {struct at91_gpio_chip* next; int pioc_virq; int chip; int pioc_idx; scalar_t__ regbase; TYPE_1__* ops; int pioc_hwirq; } ;
struct TYPE_2__ {int irq_type; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQ_TYPE_NONE ;
 scalar_t__ PIO_IDR ;
 int dev_err (int *,char*,int ) ;
 struct irq_chip* devm_kzalloc (int *,int,int ) ;
 int gpio_irq_ack ;
 int gpio_irq_handler ;
 void* gpio_irq_mask ;
 int gpio_irq_set_wake ;
 int gpio_irq_unmask ;
 struct at91_gpio_chip* gpiochip_get_data (struct gpio_chip*) ;
 int gpiochip_irqchip_add (int *,struct irq_chip*,int ,int ,int ) ;
 int gpiochip_set_chained_irqchip (int *,struct irq_chip*,int ,int ) ;
 int handle_edge_irq ;
 struct gpio_chip* irq_get_handler_data (int ) ;
 struct irq_data* irq_get_irq_data (int ) ;
 int irqd_to_hwirq (struct irq_data*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static int at91_gpio_of_irq_setup(struct platform_device *pdev,
      struct at91_gpio_chip *at91_gpio)
{
 struct gpio_chip *gpiochip_prev = ((void*)0);
 struct at91_gpio_chip *prev = ((void*)0);
 struct irq_data *d = irq_get_irq_data(at91_gpio->pioc_virq);
 struct irq_chip *gpio_irqchip;
 int ret, i;

 gpio_irqchip = devm_kzalloc(&pdev->dev, sizeof(*gpio_irqchip), GFP_KERNEL);
 if (!gpio_irqchip)
  return -ENOMEM;

 at91_gpio->pioc_hwirq = irqd_to_hwirq(d);

 gpio_irqchip->name = "GPIO";
 gpio_irqchip->irq_ack = gpio_irq_ack;
 gpio_irqchip->irq_disable = gpio_irq_mask;
 gpio_irqchip->irq_mask = gpio_irq_mask;
 gpio_irqchip->irq_unmask = gpio_irq_unmask;
 gpio_irqchip->irq_set_wake = gpio_irq_set_wake,
 gpio_irqchip->irq_set_type = at91_gpio->ops->irq_type;


 writel_relaxed(~0, at91_gpio->regbase + PIO_IDR);






 ret = gpiochip_irqchip_add(&at91_gpio->chip,
       gpio_irqchip,
       0,
       handle_edge_irq,
       IRQ_TYPE_NONE);
 if (ret) {
  dev_err(&pdev->dev, "at91_gpio.%d: Couldn't add irqchip to gpiochip.\n",
   at91_gpio->pioc_idx);
  return ret;
 }





 gpiochip_prev = irq_get_handler_data(at91_gpio->pioc_virq);
 if (!gpiochip_prev) {

  gpiochip_set_chained_irqchip(&at91_gpio->chip,
          gpio_irqchip,
          at91_gpio->pioc_virq,
          gpio_irq_handler);
  return 0;
 }

 prev = gpiochip_get_data(gpiochip_prev);


 for (i = 0; i < 2; i++) {
  if (prev->next) {
   prev = prev->next;
  } else {
   prev->next = at91_gpio;
   return 0;
  }
 }

 return -EINVAL;
}
