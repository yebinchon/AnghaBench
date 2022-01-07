
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct msm_pinctrl_soc_data {int ntiles; int npins; int pins; int * tiles; } ;
struct TYPE_2__ {int npins; int pins; int name; int * confops; int * pmxops; int * pctlops; int owner; } ;
struct msm_pinctrl {scalar_t__ irq; void* pctrl; TYPE_1__ desc; struct msm_pinctrl_soc_data const* soc; void** regs; int lock; int chip; int * dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int THIS_MODULE ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*) ;
 int dev_name (int *) ;
 void* devm_ioremap_resource (int *,struct resource*) ;
 struct msm_pinctrl* devm_kzalloc (int *,int,int ) ;
 void* devm_pinctrl_register (int *,TYPE_1__*,struct msm_pinctrl*) ;
 int msm_gpio_init (struct msm_pinctrl*) ;
 int msm_gpio_template ;
 int msm_pinconf_ops ;
 int msm_pinctrl_ops ;
 int msm_pinctrl_setup_pm_reset (struct msm_pinctrl*) ;
 int msm_pinmux_ops ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct msm_pinctrl*) ;
 int raw_spin_lock_init (int *) ;

int msm_pinctrl_probe(struct platform_device *pdev,
        const struct msm_pinctrl_soc_data *soc_data)
{
 struct msm_pinctrl *pctrl;
 struct resource *res;
 int ret;
 int i;

 pctrl = devm_kzalloc(&pdev->dev, sizeof(*pctrl), GFP_KERNEL);
 if (!pctrl)
  return -ENOMEM;

 pctrl->dev = &pdev->dev;
 pctrl->soc = soc_data;
 pctrl->chip = msm_gpio_template;

 raw_spin_lock_init(&pctrl->lock);

 if (soc_data->tiles) {
  for (i = 0; i < soc_data->ntiles; i++) {
   res = platform_get_resource_byname(pdev, IORESOURCE_MEM,
          soc_data->tiles[i]);
   pctrl->regs[i] = devm_ioremap_resource(&pdev->dev, res);
   if (IS_ERR(pctrl->regs[i]))
    return PTR_ERR(pctrl->regs[i]);
  }
 } else {
  res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
  pctrl->regs[0] = devm_ioremap_resource(&pdev->dev, res);
  if (IS_ERR(pctrl->regs[0]))
   return PTR_ERR(pctrl->regs[0]);
 }

 msm_pinctrl_setup_pm_reset(pctrl);

 pctrl->irq = platform_get_irq(pdev, 0);
 if (pctrl->irq < 0)
  return pctrl->irq;

 pctrl->desc.owner = THIS_MODULE;
 pctrl->desc.pctlops = &msm_pinctrl_ops;
 pctrl->desc.pmxops = &msm_pinmux_ops;
 pctrl->desc.confops = &msm_pinconf_ops;
 pctrl->desc.name = dev_name(&pdev->dev);
 pctrl->desc.pins = pctrl->soc->pins;
 pctrl->desc.npins = pctrl->soc->npins;

 pctrl->pctrl = devm_pinctrl_register(&pdev->dev, &pctrl->desc, pctrl);
 if (IS_ERR(pctrl->pctrl)) {
  dev_err(&pdev->dev, "Couldn't register pinctrl driver\n");
  return PTR_ERR(pctrl->pctrl);
 }

 ret = msm_gpio_init(pctrl);
 if (ret)
  return ret;

 platform_set_drvdata(pdev, pctrl);

 dev_dbg(&pdev->dev, "Probed Qualcomm pinctrl driver\n");

 return 0;
}
