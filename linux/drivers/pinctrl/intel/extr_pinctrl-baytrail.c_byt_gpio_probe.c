
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct resource {scalar_t__ start; } ;
struct TYPE_4__ {int init_valid_mask; } ;
struct gpio_chip {int base; int can_sleep; int ngpio; TYPE_1__ irq; int * parent; int label; } ;
struct byt_gpio {TYPE_3__* pdev; TYPE_2__* soc_data; struct gpio_chip chip; int saved_context; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {int npins; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_IRQ ;
 int IRQ_TYPE_NONE ;
 struct gpio_chip byt_gpio_chip ;
 int byt_gpio_irq_handler ;
 int byt_gpio_irq_init_hw (struct byt_gpio*) ;
 int byt_init_irq_valid_mask ;
 int byt_irqchip ;
 int dev_err (int *,char*) ;
 int dev_name (int *) ;
 int devm_gpiochip_add_data (int *,struct gpio_chip*,struct byt_gpio*) ;
 int devm_kcalloc (int *,int ,int,int ) ;
 int gpiochip_add_pin_range (struct gpio_chip*,int ,int ,int ,int ) ;
 int gpiochip_irqchip_add (struct gpio_chip*,int *,int ,int ,int ) ;
 int gpiochip_set_chained_irqchip (struct gpio_chip*,int *,unsigned int,int ) ;
 int handle_bad_irq ;
 struct resource* platform_get_resource (TYPE_3__*,int ,int ) ;

__attribute__((used)) static int byt_gpio_probe(struct byt_gpio *vg)
{
 struct gpio_chip *gc;
 struct resource *irq_rc;
 int ret;


 vg->chip = byt_gpio_chip;
 gc = &vg->chip;
 gc->label = dev_name(&vg->pdev->dev);
 gc->base = -1;
 gc->can_sleep = 0;
 gc->parent = &vg->pdev->dev;
 gc->ngpio = vg->soc_data->npins;
 gc->irq.init_valid_mask = byt_init_irq_valid_mask;







 ret = devm_gpiochip_add_data(&vg->pdev->dev, gc, vg);
 if (ret) {
  dev_err(&vg->pdev->dev, "failed adding byt-gpio chip\n");
  return ret;
 }

 ret = gpiochip_add_pin_range(&vg->chip, dev_name(&vg->pdev->dev),
         0, 0, vg->soc_data->npins);
 if (ret) {
  dev_err(&vg->pdev->dev, "failed to add GPIO pin range\n");
  return ret;
 }


 irq_rc = platform_get_resource(vg->pdev, IORESOURCE_IRQ, 0);
 if (irq_rc && irq_rc->start) {
  byt_gpio_irq_init_hw(vg);
  ret = gpiochip_irqchip_add(gc, &byt_irqchip, 0,
        handle_bad_irq, IRQ_TYPE_NONE);
  if (ret) {
   dev_err(&vg->pdev->dev, "failed to add irqchip\n");
   return ret;
  }

  gpiochip_set_chained_irqchip(gc, &byt_irqchip,
          (unsigned)irq_rc->start,
          byt_gpio_irq_handler);
 }

 return ret;
}
