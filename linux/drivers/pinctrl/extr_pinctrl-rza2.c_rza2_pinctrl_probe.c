
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int npins; int owner; int * pmxops; int * pctlops; int name; } ;
struct rza2_pinctrl_priv {int npins; TYPE_1__ desc; int base; int * dev; } ;
struct resource {int dummy; } ;
struct platform_device {int dev; } ;


 int DRIVER_NAME ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int RZA2_PINS_PER_PORT ;
 int THIS_MODULE ;
 int dev_info (int *,char*,int ) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct rza2_pinctrl_priv* devm_kzalloc (int *,int,int ) ;
 scalar_t__ of_device_get_match_data (int *) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct rza2_pinctrl_priv*) ;
 int * port_names ;
 int rza2_pinctrl_ops ;
 int rza2_pinctrl_register (struct rza2_pinctrl_priv*) ;
 int rza2_pinmux_ops ;

__attribute__((used)) static int rza2_pinctrl_probe(struct platform_device *pdev)
{
 struct rza2_pinctrl_priv *priv;
 struct resource *res;
 int ret;

 priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->dev = &pdev->dev;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 priv->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(priv->base))
  return PTR_ERR(priv->base);

 platform_set_drvdata(pdev, priv);

 priv->npins = (int)(uintptr_t)of_device_get_match_data(&pdev->dev) *
        RZA2_PINS_PER_PORT;

 priv->desc.name = DRIVER_NAME;
 priv->desc.pctlops = &rza2_pinctrl_ops;
 priv->desc.pmxops = &rza2_pinmux_ops;
 priv->desc.owner = THIS_MODULE;

 ret = rza2_pinctrl_register(priv);
 if (ret)
  return ret;

 dev_info(&pdev->dev, "Registered ports P0 - P%c\n",
   port_names[priv->desc.npins / RZA2_PINS_PER_PORT - 1]);

 return 0;
}
