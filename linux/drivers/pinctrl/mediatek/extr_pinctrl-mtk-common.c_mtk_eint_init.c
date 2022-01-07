
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct resource {int dummy; } ;
struct TYPE_7__ {struct device_node* of_node; } ;
struct platform_device {TYPE_4__ dev; } ;
struct mtk_pinctrl {TYPE_2__* eint; TYPE_1__* devdata; int dev; } ;
struct device_node {int dummy; } ;
struct TYPE_6__ {int * gpio_xlate; struct mtk_pinctrl* pctl; int * hw; int regs; TYPE_4__* dev; int irq; int base; } ;
struct TYPE_5__ {int eint_hw; int eint_regs; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int devm_ioremap_resource (TYPE_4__*,struct resource*) ;
 TYPE_2__* devm_kzalloc (int ,int,int ) ;
 int irq_of_parse_and_map (struct device_node*,int ) ;
 int mtk_eint_do_init (TYPE_2__*) ;
 int mtk_eint_xt ;
 int of_property_read_bool (struct device_node*,char*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;

__attribute__((used)) static int mtk_eint_init(struct mtk_pinctrl *pctl, struct platform_device *pdev)
{
 struct device_node *np = pdev->dev.of_node;
 struct resource *res;

 if (!of_property_read_bool(np, "interrupt-controller"))
  return -ENODEV;

 pctl->eint = devm_kzalloc(pctl->dev, sizeof(*pctl->eint), GFP_KERNEL);
 if (!pctl->eint)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 pctl->eint->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(pctl->eint->base))
  return PTR_ERR(pctl->eint->base);

 pctl->eint->irq = irq_of_parse_and_map(np, 0);
 if (!pctl->eint->irq)
  return -EINVAL;

 pctl->eint->dev = &pdev->dev;




 pctl->eint->regs = pctl->devdata->eint_regs;
 pctl->eint->hw = &pctl->devdata->eint_hw;
 pctl->eint->pctl = pctl;
 pctl->eint->gpio_xlate = &mtk_eint_xt;

 return mtk_eint_do_init(pctl->eint);
}
