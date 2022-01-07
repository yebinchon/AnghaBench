
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_5__ {int base; int ngpio; int of_gpio_n_cells; int can_sleep; void* label; struct device* parent; } ;
struct pmic_mpp_state {TYPE_1__ chip; struct device* dev; int ctrl; int map; } ;
struct pmic_mpp_pad {scalar_t__ irq; scalar_t__ base; } ;
struct device {int parent; int of_node; } ;
struct platform_device {struct device dev; } ;
struct pinctrl_pin_desc {int number; int name; struct pmic_mpp_pad* drv_data; } ;
struct pinctrl_desc {int npins; int num_custom_params; int custom_conf_items; int * custom_params; struct pinctrl_pin_desc* pins; void* name; int owner; int * confops; int * pmxops; int * pctlops; } ;


 int ARRAY_SIZE (int *) ;
 int BUG_ON (int) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PMIC_MPP_ADDRESS_RANGE ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int dev_err (struct device*,char*) ;
 int dev_get_regmap (int ,int *) ;
 void* dev_name (struct device*) ;
 void* devm_kcalloc (struct device*,int,int,int ) ;
 void* devm_kzalloc (struct device*,int,int ) ;
 int devm_pinctrl_register (struct device*,struct pinctrl_desc*,struct pmic_mpp_state*) ;
 int gpiochip_add_data (TYPE_1__*,struct pmic_mpp_state*) ;
 int gpiochip_add_pin_range (TYPE_1__*,void*,int ,int ,int) ;
 int gpiochip_remove (TYPE_1__*) ;
 int of_property_read_u32 (int ,char*,scalar_t__*) ;
 scalar_t__ platform_get_irq (struct platform_device*,int) ;
 int platform_irq_count (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,struct pmic_mpp_state*) ;
 int pmic_conf_items ;
 int * pmic_mpp_bindings ;
 TYPE_1__ pmic_mpp_gpio_template ;
 int * pmic_mpp_groups ;
 int pmic_mpp_pinconf_ops ;
 int pmic_mpp_pinctrl_ops ;
 int pmic_mpp_pinmux_ops ;
 int pmic_mpp_populate (struct pmic_mpp_state*,struct pmic_mpp_pad*) ;

__attribute__((used)) static int pmic_mpp_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct pinctrl_pin_desc *pindesc;
 struct pinctrl_desc *pctrldesc;
 struct pmic_mpp_pad *pad, *pads;
 struct pmic_mpp_state *state;
 int ret, npins, i;
 u32 reg;

 ret = of_property_read_u32(dev->of_node, "reg", &reg);
 if (ret < 0) {
  dev_err(dev, "missing base address");
  return ret;
 }

 npins = platform_irq_count(pdev);
 if (!npins)
  return -EINVAL;
 if (npins < 0)
  return npins;

 BUG_ON(npins > ARRAY_SIZE(pmic_mpp_groups));

 state = devm_kzalloc(dev, sizeof(*state), GFP_KERNEL);
 if (!state)
  return -ENOMEM;

 platform_set_drvdata(pdev, state);

 state->dev = &pdev->dev;
 state->map = dev_get_regmap(dev->parent, ((void*)0));

 pindesc = devm_kcalloc(dev, npins, sizeof(*pindesc), GFP_KERNEL);
 if (!pindesc)
  return -ENOMEM;

 pads = devm_kcalloc(dev, npins, sizeof(*pads), GFP_KERNEL);
 if (!pads)
  return -ENOMEM;

 pctrldesc = devm_kzalloc(dev, sizeof(*pctrldesc), GFP_KERNEL);
 if (!pctrldesc)
  return -ENOMEM;

 pctrldesc->pctlops = &pmic_mpp_pinctrl_ops;
 pctrldesc->pmxops = &pmic_mpp_pinmux_ops;
 pctrldesc->confops = &pmic_mpp_pinconf_ops;
 pctrldesc->owner = THIS_MODULE;
 pctrldesc->name = dev_name(dev);
 pctrldesc->pins = pindesc;
 pctrldesc->npins = npins;

 pctrldesc->num_custom_params = ARRAY_SIZE(pmic_mpp_bindings);
 pctrldesc->custom_params = pmic_mpp_bindings;




 for (i = 0; i < npins; i++, pindesc++) {
  pad = &pads[i];
  pindesc->drv_data = pad;
  pindesc->number = i;
  pindesc->name = pmic_mpp_groups[i];

  pad->irq = platform_get_irq(pdev, i);
  if (pad->irq < 0)
   return pad->irq;

  pad->base = reg + i * PMIC_MPP_ADDRESS_RANGE;

  ret = pmic_mpp_populate(state, pad);
  if (ret < 0)
   return ret;
 }

 state->chip = pmic_mpp_gpio_template;
 state->chip.parent = dev;
 state->chip.base = -1;
 state->chip.ngpio = npins;
 state->chip.label = dev_name(dev);
 state->chip.of_gpio_n_cells = 2;
 state->chip.can_sleep = 0;

 state->ctrl = devm_pinctrl_register(dev, pctrldesc, state);
 if (IS_ERR(state->ctrl))
  return PTR_ERR(state->ctrl);

 ret = gpiochip_add_data(&state->chip, state);
 if (ret) {
  dev_err(state->dev, "can't add gpio chip\n");
  return ret;
 }

 ret = gpiochip_add_pin_range(&state->chip, dev_name(dev), 0, 0, npins);
 if (ret) {
  dev_err(dev, "failed to add pin range\n");
  goto err_range;
 }

 return 0;

err_range:
 gpiochip_remove(&state->chip);
 return ret;
}
