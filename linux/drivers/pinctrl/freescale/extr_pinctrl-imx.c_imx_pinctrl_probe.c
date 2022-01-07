
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct regmap_config {char* name; } ;
struct regmap {int dummy; } ;
struct TYPE_10__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct pinctrl_desc {int npins; int num_custom_params; int custom_params; int owner; int * confops; TYPE_2__* pmxops; int * pctlops; scalar_t__ pins; int name; } ;
struct imx_pinctrl_soc_info {int npins; int flags; int gpio_set_direction; int num_custom_params; int custom_params; scalar_t__ pins; scalar_t__ gpr_compatible; } ;
struct imx_pinctrl {int pctl; TYPE_1__* dev; struct imx_pinctrl_soc_info const* info; int mutex; int input_sel_base; struct regmap* base; TYPE_5__* pin_regs; } ;
struct device_node {int dummy; } ;
struct TYPE_12__ {int mux_reg; int conf_reg; } ;
struct TYPE_11__ {int gpio_set_direction; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IMX_USE_SCU ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int THIS_MODULE ;
 int dev_err (TYPE_1__*,char*) ;
 int dev_info (TYPE_1__*,char*) ;
 int dev_name (TYPE_1__*) ;
 TYPE_5__* devm_kmalloc_array (TYPE_1__*,int,int,int ) ;
 void* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_pinctrl_register_and_init (TYPE_1__*,struct pinctrl_desc*,struct imx_pinctrl*,int *) ;
 struct regmap* devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int imx_free_resources (struct imx_pinctrl*) ;
 int imx_pctrl_ops ;
 int imx_pinconf_ops ;
 int imx_pinctrl_probe_dt (struct platform_device*,struct imx_pinctrl*) ;
 TYPE_2__ imx_pmx_ops ;
 int mutex_init (int *) ;
 int of_iomap (struct device_node*,int ) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (struct device_node*,char*,int ) ;
 scalar_t__ of_property_read_bool (struct device_node*,char*) ;
 int pinctrl_enable (int ) ;
 int platform_set_drvdata (struct platform_device*,struct imx_pinctrl*) ;
 int regmap_attach_dev (TYPE_1__*,struct regmap*,struct regmap_config*) ;
 struct regmap* syscon_regmap_lookup_by_compatible (scalar_t__) ;

int imx_pinctrl_probe(struct platform_device *pdev,
        const struct imx_pinctrl_soc_info *info)
{
 struct regmap_config config = { .name = "gpr" };
 struct device_node *dev_np = pdev->dev.of_node;
 struct pinctrl_desc *imx_pinctrl_desc;
 struct device_node *np;
 struct imx_pinctrl *ipctl;
 struct regmap *gpr;
 int ret, i;

 if (!info || !info->pins || !info->npins) {
  dev_err(&pdev->dev, "wrong pinctrl info\n");
  return -EINVAL;
 }

 if (info->gpr_compatible) {
  gpr = syscon_regmap_lookup_by_compatible(info->gpr_compatible);
  if (!IS_ERR(gpr))
   regmap_attach_dev(&pdev->dev, gpr, &config);
 }


 ipctl = devm_kzalloc(&pdev->dev, sizeof(*ipctl), GFP_KERNEL);
 if (!ipctl)
  return -ENOMEM;

 if (!(info->flags & IMX_USE_SCU)) {
  ipctl->pin_regs = devm_kmalloc_array(&pdev->dev, info->npins,
           sizeof(*ipctl->pin_regs),
           GFP_KERNEL);
  if (!ipctl->pin_regs)
   return -ENOMEM;

  for (i = 0; i < info->npins; i++) {
   ipctl->pin_regs[i].mux_reg = -1;
   ipctl->pin_regs[i].conf_reg = -1;
  }

  ipctl->base = devm_platform_ioremap_resource(pdev, 0);
  if (IS_ERR(ipctl->base))
   return PTR_ERR(ipctl->base);

  if (of_property_read_bool(dev_np, "fsl,input-sel")) {
   np = of_parse_phandle(dev_np, "fsl,input-sel", 0);
   if (!np) {
    dev_err(&pdev->dev, "iomuxc fsl,input-sel property not found\n");
    return -EINVAL;
   }

   ipctl->input_sel_base = of_iomap(np, 0);
   of_node_put(np);
   if (!ipctl->input_sel_base) {
    dev_err(&pdev->dev,
     "iomuxc input select base address not found\n");
    return -ENOMEM;
   }
  }
 }

 imx_pinctrl_desc = devm_kzalloc(&pdev->dev, sizeof(*imx_pinctrl_desc),
     GFP_KERNEL);
 if (!imx_pinctrl_desc)
  return -ENOMEM;

 imx_pinctrl_desc->name = dev_name(&pdev->dev);
 imx_pinctrl_desc->pins = info->pins;
 imx_pinctrl_desc->npins = info->npins;
 imx_pinctrl_desc->pctlops = &imx_pctrl_ops;
 imx_pinctrl_desc->pmxops = &imx_pmx_ops;
 imx_pinctrl_desc->confops = &imx_pinconf_ops;
 imx_pinctrl_desc->owner = THIS_MODULE;


 imx_pinctrl_desc->custom_params = info->custom_params;
 imx_pinctrl_desc->num_custom_params = info->num_custom_params;


 imx_pmx_ops.gpio_set_direction = info->gpio_set_direction;

 mutex_init(&ipctl->mutex);

 ipctl->info = info;
 ipctl->dev = &pdev->dev;
 platform_set_drvdata(pdev, ipctl);
 ret = devm_pinctrl_register_and_init(&pdev->dev,
          imx_pinctrl_desc, ipctl,
          &ipctl->pctl);
 if (ret) {
  dev_err(&pdev->dev, "could not register IMX pinctrl driver\n");
  goto free;
 }

 ret = imx_pinctrl_probe_dt(pdev, ipctl);
 if (ret) {
  dev_err(&pdev->dev, "fail to probe dt properties\n");
  goto free;
 }

 dev_info(&pdev->dev, "initialized IMX pinctrl driver\n");

 return pinctrl_enable(ipctl->pctl);

free:
 imx_free_resources(ipctl);

 return ret;
}
