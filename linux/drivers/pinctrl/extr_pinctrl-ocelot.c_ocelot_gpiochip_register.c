
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct gpio_chip {char* label; int of_node; scalar_t__ base; TYPE_3__* parent; int ngpio; } ;
struct ocelot_pinctrl {TYPE_2__* dev; TYPE_1__* desc; struct gpio_chip gpio_chip; } ;
struct TYPE_5__ {int of_node; } ;
struct TYPE_4__ {int npins; } ;


 int IRQ_TYPE_NONE ;
 int devm_gpiochip_add_data (TYPE_3__*,struct gpio_chip*,struct ocelot_pinctrl*) ;
 int gpiochip_irqchip_add (struct gpio_chip*,int *,int ,int ,int ) ;
 int gpiochip_set_chained_irqchip (struct gpio_chip*,int *,int,int ) ;
 int handle_edge_irq ;
 int irq_of_parse_and_map (int ,int ) ;
 struct gpio_chip ocelot_gpiolib_chip ;
 int ocelot_irq_handler ;
 int ocelot_irqchip ;

__attribute__((used)) static int ocelot_gpiochip_register(struct platform_device *pdev,
        struct ocelot_pinctrl *info)
{
 struct gpio_chip *gc;
 int ret, irq;

 info->gpio_chip = ocelot_gpiolib_chip;

 gc = &info->gpio_chip;
 gc->ngpio = info->desc->npins;
 gc->parent = &pdev->dev;
 gc->base = 0;
 gc->of_node = info->dev->of_node;
 gc->label = "ocelot-gpio";

 ret = devm_gpiochip_add_data(&pdev->dev, gc, info);
 if (ret)
  return ret;

 irq = irq_of_parse_and_map(pdev->dev.of_node, 0);
 if (irq <= 0)
  return irq;

 ret = gpiochip_irqchip_add(gc, &ocelot_irqchip, 0, handle_edge_irq,
       IRQ_TYPE_NONE);
 if (ret)
  return ret;

 gpiochip_set_chained_irqchip(gc, &ocelot_irqchip, irq,
         ocelot_irq_handler);

 return 0;
}
