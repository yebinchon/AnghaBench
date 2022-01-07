
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct resource {int dummy; } ;
struct TYPE_12__ {int of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct pinctrl_pin_desc {int name; int number; } ;
struct mtk_pinctrl {int nbase; int pctrl; struct mtk_pin_soc const* soc; int * base; TYPE_3__* dev; } ;
struct mtk_pin_soc {int nbase_names; int npins; TYPE_1__* pins; int * base_names; } ;
struct TYPE_11__ {int npins; int custom_conf_items; int custom_params; int num_custom_params; struct pinctrl_pin_desc const* pins; } ;
struct TYPE_10__ {int name; int number; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_3__*,char*,...) ;
 int dev_warn (TYPE_3__*,char*) ;
 int devm_ioremap_resource (TYPE_3__*,struct resource*) ;
 void* devm_kmalloc_array (TYPE_3__*,int,int,int ) ;
 struct mtk_pinctrl* devm_kzalloc (TYPE_3__*,int,int ) ;
 int devm_pinctrl_register_and_init (TYPE_3__*,TYPE_2__*,struct mtk_pinctrl*,int *) ;
 int mtk_build_eint (struct mtk_pinctrl*,struct platform_device*) ;
 int mtk_build_gpiochip (struct mtk_pinctrl*,int ) ;
 int mtk_conf_items ;
 int mtk_custom_bindings ;
 TYPE_2__ mtk_desc ;
 int mtk_pctrl_build_state (struct platform_device*) ;
 int pinctrl_enable (int ) ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct mtk_pinctrl*) ;

int mtk_paris_pinctrl_probe(struct platform_device *pdev,
       const struct mtk_pin_soc *soc)
{
 struct pinctrl_pin_desc *pins;
 struct mtk_pinctrl *hw;
 struct resource *res;
 int err, i;

 hw = devm_kzalloc(&pdev->dev, sizeof(*hw), GFP_KERNEL);
 if (!hw)
  return -ENOMEM;

 platform_set_drvdata(pdev, hw);
 hw->soc = soc;
 hw->dev = &pdev->dev;

 if (!hw->soc->nbase_names) {
  dev_err(&pdev->dev,
   "SoC should be assigned at least one register base\n");
  return -EINVAL;
 }

 hw->base = devm_kmalloc_array(&pdev->dev, hw->soc->nbase_names,
          sizeof(*hw->base), GFP_KERNEL);
 if (!hw->base)
  return -ENOMEM;

 for (i = 0; i < hw->soc->nbase_names; i++) {
  res = platform_get_resource_byname(pdev, IORESOURCE_MEM,
         hw->soc->base_names[i]);
  if (!res) {
   dev_err(&pdev->dev, "missing IO resource\n");
   return -ENXIO;
  }

  hw->base[i] = devm_ioremap_resource(&pdev->dev, res);
  if (IS_ERR(hw->base[i]))
   return PTR_ERR(hw->base[i]);
 }

 hw->nbase = hw->soc->nbase_names;

 err = mtk_pctrl_build_state(pdev);
 if (err) {
  dev_err(&pdev->dev, "build state failed: %d\n", err);
  return -EINVAL;
 }


 pins = devm_kmalloc_array(&pdev->dev, hw->soc->npins, sizeof(*pins),
      GFP_KERNEL);
 if (!pins)
  return -ENOMEM;

 for (i = 0; i < hw->soc->npins; i++) {
  pins[i].number = hw->soc->pins[i].number;
  pins[i].name = hw->soc->pins[i].name;
 }


 mtk_desc.pins = (const struct pinctrl_pin_desc *)pins;
 mtk_desc.npins = hw->soc->npins;
 mtk_desc.num_custom_params = ARRAY_SIZE(mtk_custom_bindings);
 mtk_desc.custom_params = mtk_custom_bindings;




 err = devm_pinctrl_register_and_init(&pdev->dev, &mtk_desc, hw,
          &hw->pctrl);
 if (err)
  return err;

 err = pinctrl_enable(hw->pctrl);
 if (err)
  return err;

 err = mtk_build_eint(hw, pdev);
 if (err)
  dev_warn(&pdev->dev,
    "Failed to add EINT, but pinctrl still can work\n");


 err = mtk_build_gpiochip(hw, pdev->dev.of_node);
 if (err) {
  dev_err(&pdev->dev, "Failed to add gpio_chip\n");
  return err;
 }

 platform_set_drvdata(pdev, hw);

 return 0;
}
