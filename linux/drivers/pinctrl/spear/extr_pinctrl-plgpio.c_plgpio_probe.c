
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct resource {int dummy; } ;
struct TYPE_13__ {int base; int of_node; int owner; TYPE_5__* parent; int label; int set; int get; int direction_output; int direction_input; int free; int request; int ngpio; } ;
struct plgpio {int clk; TYPE_1__ chip; int lock; int csave_regs; int base; } ;
struct TYPE_14__ {int of_node; } ;
struct platform_device {TYPE_5__ dev; } ;


 int DIV_ROUND_UP (int ,int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int IRQ_TYPE_NONE ;
 scalar_t__ IS_ERR (int ) ;
 int MAX_GPIO_PER_REG ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int clk_prepare (int ) ;
 int clk_unprepare (int ) ;
 int dev_err (TYPE_5__*,char*) ;
 int dev_info (TYPE_5__*,char*) ;
 int dev_name (TYPE_5__*) ;
 int dev_warn (TYPE_5__*,char*) ;
 int devm_clk_get (TYPE_5__*,int *) ;
 int devm_ioremap_resource (TYPE_5__*,struct resource*) ;
 int devm_kcalloc (TYPE_5__*,int ,int,int ) ;
 struct plgpio* devm_kzalloc (TYPE_5__*,int,int ) ;
 int gpiochip_add_data (TYPE_1__*,struct plgpio*) ;
 int gpiochip_irqchip_add (TYPE_1__*,int *,int ,int ,int ) ;
 int gpiochip_remove (TYPE_1__*) ;
 int gpiochip_set_chained_irqchip (TYPE_1__*,int *,int,int ) ;
 int handle_simple_irq ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct plgpio*) ;
 int plgpio_direction_input ;
 int plgpio_direction_output ;
 int plgpio_free ;
 int plgpio_get_value ;
 int plgpio_irq_handler ;
 int plgpio_irqchip ;
 int plgpio_probe_dt (struct platform_device*,struct plgpio*) ;
 int plgpio_request ;
 int plgpio_set_value ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int plgpio_probe(struct platform_device *pdev)
{
 struct plgpio *plgpio;
 struct resource *res;
 int ret, irq;

 plgpio = devm_kzalloc(&pdev->dev, sizeof(*plgpio), GFP_KERNEL);
 if (!plgpio)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 plgpio->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(plgpio->base))
  return PTR_ERR(plgpio->base);

 ret = plgpio_probe_dt(pdev, plgpio);
 if (ret) {
  dev_err(&pdev->dev, "DT probe failed\n");
  return ret;
 }

 plgpio->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(plgpio->clk))
  dev_warn(&pdev->dev, "clk_get() failed, work without it\n");
 platform_set_drvdata(pdev, plgpio);
 spin_lock_init(&plgpio->lock);

 plgpio->chip.base = -1;
 plgpio->chip.request = plgpio_request;
 plgpio->chip.free = plgpio_free;
 plgpio->chip.direction_input = plgpio_direction_input;
 plgpio->chip.direction_output = plgpio_direction_output;
 plgpio->chip.get = plgpio_get_value;
 plgpio->chip.set = plgpio_set_value;
 plgpio->chip.label = dev_name(&pdev->dev);
 plgpio->chip.parent = &pdev->dev;
 plgpio->chip.owner = THIS_MODULE;
 plgpio->chip.of_node = pdev->dev.of_node;

 if (!IS_ERR(plgpio->clk)) {
  ret = clk_prepare(plgpio->clk);
  if (ret) {
   dev_err(&pdev->dev, "clk prepare failed\n");
   return ret;
  }
 }

 ret = gpiochip_add_data(&plgpio->chip, plgpio);
 if (ret) {
  dev_err(&pdev->dev, "unable to add gpio chip\n");
  goto unprepare_clk;
 }

 irq = platform_get_irq(pdev, 0);
 if (irq < 0) {
  dev_info(&pdev->dev, "PLGPIO registered without IRQs\n");
  return 0;
 }

 ret = gpiochip_irqchip_add(&plgpio->chip,
       &plgpio_irqchip,
       0,
       handle_simple_irq,
       IRQ_TYPE_NONE);
 if (ret) {
  dev_err(&pdev->dev, "failed to add irqchip to gpiochip\n");
  goto remove_gpiochip;
 }

 gpiochip_set_chained_irqchip(&plgpio->chip,
         &plgpio_irqchip,
         irq,
         plgpio_irq_handler);

 dev_info(&pdev->dev, "PLGPIO registered with IRQs\n");

 return 0;

remove_gpiochip:
 dev_info(&pdev->dev, "Remove gpiochip\n");
 gpiochip_remove(&plgpio->chip);
unprepare_clk:
 if (!IS_ERR(plgpio->clk))
  clk_unprepare(plgpio->clk);

 return ret;
}
