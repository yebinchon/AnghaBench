
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_efuse_priv {int base; } ;
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct nvmem_device {int dummy; } ;
struct nvmem_config {int stride; int word_size; int read_only; struct device* dev; struct uniphier_efuse_priv* priv; int size; int reg_read; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int PTR_ERR_OR_ZERO (struct nvmem_device*) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct uniphier_efuse_priv* devm_kzalloc (struct device*,int,int ) ;
 struct nvmem_device* devm_nvmem_register (struct device*,struct nvmem_config*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int resource_size (struct resource*) ;
 int uniphier_reg_read ;

__attribute__((used)) static int uniphier_efuse_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct resource *res;
 struct nvmem_device *nvmem;
 struct nvmem_config econfig = {};
 struct uniphier_efuse_priv *priv;

 priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 priv->base = devm_ioremap_resource(dev, res);
 if (IS_ERR(priv->base))
  return PTR_ERR(priv->base);

 econfig.stride = 1;
 econfig.word_size = 1;
 econfig.read_only = 1;
 econfig.reg_read = uniphier_reg_read;
 econfig.size = resource_size(res);
 econfig.priv = priv;
 econfig.dev = dev;
 nvmem = devm_nvmem_register(dev, &econfig);

 return PTR_ERR_OR_ZERO(nvmem);
}
