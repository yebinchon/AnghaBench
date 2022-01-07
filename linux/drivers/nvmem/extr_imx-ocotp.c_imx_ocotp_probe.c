
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct ocotp_priv {TYPE_2__* config; TYPE_1__* params; int clk; int base; struct device* dev; } ;
struct nvmem_device {int dummy; } ;
struct TYPE_5__ {int size; struct ocotp_priv* priv; struct device* dev; } ;
struct TYPE_4__ {int nregs; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int PTR_ERR_OR_ZERO (struct nvmem_device*) ;
 int devm_clk_get (struct device*,int *) ;
 struct ocotp_priv* devm_kzalloc (struct device*,int,int ) ;
 struct nvmem_device* devm_nvmem_register (struct device*,TYPE_2__*) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 TYPE_2__ imx_ocotp_nvmem_config ;
 TYPE_1__* of_device_get_match_data (struct device*) ;

__attribute__((used)) static int imx_ocotp_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct ocotp_priv *priv;
 struct nvmem_device *nvmem;

 priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->dev = dev;

 priv->base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(priv->base))
  return PTR_ERR(priv->base);

 priv->clk = devm_clk_get(dev, ((void*)0));
 if (IS_ERR(priv->clk))
  return PTR_ERR(priv->clk);

 priv->params = of_device_get_match_data(&pdev->dev);
 imx_ocotp_nvmem_config.size = 4 * priv->params->nregs;
 imx_ocotp_nvmem_config.dev = dev;
 imx_ocotp_nvmem_config.priv = priv;
 priv->config = &imx_ocotp_nvmem_config;
 nvmem = devm_nvmem_register(dev, &imx_ocotp_nvmem_config);


 return PTR_ERR_OR_ZERO(nvmem);
}
