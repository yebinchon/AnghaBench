
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct owl_pinctrl_soc_data {int npins; int pins; } ;
struct TYPE_4__ {int free; int request; int set; int get; int direction_output; int direction_input; } ;
struct owl_pinctrl {int num_irq; int* irq; int clk; int pctrldev; int * dev; struct owl_pinctrl_soc_data* soc; TYPE_1__ chip; int lock; int base; } ;
struct TYPE_5__ {int npins; int pins; int name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int *,char*) ;
 int dev_name (int *) ;
 int devm_clk_get (int *,int *) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 int* devm_kcalloc (int *,int,int,int ) ;
 struct owl_pinctrl* devm_kzalloc (int *,int,int ) ;
 int devm_pinctrl_register (int *,TYPE_2__*,struct owl_pinctrl*) ;
 int owl_gpio_direction_input ;
 int owl_gpio_direction_output ;
 int owl_gpio_free ;
 int owl_gpio_get ;
 int owl_gpio_init (struct owl_pinctrl*) ;
 int owl_gpio_request ;
 int owl_gpio_set ;
 TYPE_2__ owl_pinctrl_desc ;
 int platform_get_irq (struct platform_device*,int) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_irq_count (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,struct owl_pinctrl*) ;
 int raw_spin_lock_init (int *) ;

int owl_pinctrl_probe(struct platform_device *pdev,
    struct owl_pinctrl_soc_data *soc_data)
{
 struct resource *res;
 struct owl_pinctrl *pctrl;
 int ret, i;

 pctrl = devm_kzalloc(&pdev->dev, sizeof(*pctrl), GFP_KERNEL);
 if (!pctrl)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 pctrl->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(pctrl->base))
  return PTR_ERR(pctrl->base);


 pctrl->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(pctrl->clk)) {
  dev_err(&pdev->dev, "no clock defined\n");
  return PTR_ERR(pctrl->clk);
 }

 ret = clk_prepare_enable(pctrl->clk);
 if (ret) {
  dev_err(&pdev->dev, "clk enable failed\n");
  return ret;
 }

 raw_spin_lock_init(&pctrl->lock);

 owl_pinctrl_desc.name = dev_name(&pdev->dev);
 owl_pinctrl_desc.pins = soc_data->pins;
 owl_pinctrl_desc.npins = soc_data->npins;

 pctrl->chip.direction_input = owl_gpio_direction_input;
 pctrl->chip.direction_output = owl_gpio_direction_output;
 pctrl->chip.get = owl_gpio_get;
 pctrl->chip.set = owl_gpio_set;
 pctrl->chip.request = owl_gpio_request;
 pctrl->chip.free = owl_gpio_free;

 pctrl->soc = soc_data;
 pctrl->dev = &pdev->dev;

 pctrl->pctrldev = devm_pinctrl_register(&pdev->dev,
     &owl_pinctrl_desc, pctrl);
 if (IS_ERR(pctrl->pctrldev)) {
  dev_err(&pdev->dev, "could not register Actions OWL pinmux driver\n");
  ret = PTR_ERR(pctrl->pctrldev);
  goto err_exit;
 }

 ret = platform_irq_count(pdev);
 if (ret < 0)
  goto err_exit;

 pctrl->num_irq = ret;

 pctrl->irq = devm_kcalloc(&pdev->dev, pctrl->num_irq,
     sizeof(*pctrl->irq), GFP_KERNEL);
 if (!pctrl->irq) {
  ret = -ENOMEM;
  goto err_exit;
 }

 for (i = 0; i < pctrl->num_irq ; i++) {
  ret = platform_get_irq(pdev, i);
  if (ret < 0)
   goto err_exit;
  pctrl->irq[i] = ret;
 }

 ret = owl_gpio_init(pctrl);
 if (ret)
  goto err_exit;

 platform_set_drvdata(pdev, pctrl);

 return 0;

err_exit:
 clk_disable_unprepare(pctrl->clk);

 return ret;
}
