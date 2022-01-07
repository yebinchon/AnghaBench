
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmem_config {int stride; int word_size; int reg_write; int reg_read; int owner; int size; struct device* dev; int name; struct snvs_lpgpr_priv* priv; } ;
struct snvs_lpgpr_priv {struct nvmem_config cfg; struct snvs_lpgpr_cfg const* dcfg; int regmap; } ;
struct snvs_lpgpr_cfg {int size; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct nvmem_device {int dummy; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int PTR_ERR_OR_ZERO (struct nvmem_device*) ;
 int THIS_MODULE ;
 int dev_name (struct device*) ;
 struct snvs_lpgpr_priv* devm_kzalloc (struct device*,int,int ) ;
 struct nvmem_device* devm_nvmem_register (struct device*,struct nvmem_config*) ;
 struct snvs_lpgpr_cfg* of_device_get_match_data (struct device*) ;
 struct device_node* of_get_parent (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 int snvs_lpgpr_read ;
 int snvs_lpgpr_write ;
 int syscon_node_to_regmap (struct device_node*) ;

__attribute__((used)) static int snvs_lpgpr_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct device_node *node = dev->of_node;
 struct device_node *syscon_node;
 struct snvs_lpgpr_priv *priv;
 struct nvmem_config *cfg;
 struct nvmem_device *nvmem;
 const struct snvs_lpgpr_cfg *dcfg;

 if (!node)
  return -ENOENT;

 priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 dcfg = of_device_get_match_data(dev);
 if (!dcfg)
  return -EINVAL;

 syscon_node = of_get_parent(node);
 if (!syscon_node)
  return -ENODEV;

 priv->regmap = syscon_node_to_regmap(syscon_node);
 of_node_put(syscon_node);
 if (IS_ERR(priv->regmap))
  return PTR_ERR(priv->regmap);

 priv->dcfg = dcfg;

 cfg = &priv->cfg;
 cfg->priv = priv;
 cfg->name = dev_name(dev);
 cfg->dev = dev;
 cfg->stride = 4;
 cfg->word_size = 4;
 cfg->size = dcfg->size,
 cfg->owner = THIS_MODULE;
 cfg->reg_read = snvs_lpgpr_read;
 cfg->reg_write = snvs_lpgpr_write;

 nvmem = devm_nvmem_register(dev, cfg);

 return PTR_ERR_OR_ZERO(nvmem);
}
