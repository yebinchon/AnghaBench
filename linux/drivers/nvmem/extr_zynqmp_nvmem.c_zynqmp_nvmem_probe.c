
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct zynqmp_nvmem_data {int nvmem; struct device* dev; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_3__ {struct zynqmp_nvmem_data* priv; int reg_read; struct device* dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int PTR_ERR_OR_ZERO (int ) ;
 struct zynqmp_nvmem_data* devm_kzalloc (struct device*,int,int ) ;
 int devm_nvmem_register (struct device*,TYPE_1__*) ;
 TYPE_1__ econfig ;
 int eemi_ops ;
 int zynqmp_nvmem_read ;
 int zynqmp_pm_get_eemi_ops () ;

__attribute__((used)) static int zynqmp_nvmem_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct zynqmp_nvmem_data *priv;

 priv = devm_kzalloc(dev, sizeof(struct zynqmp_nvmem_data), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 eemi_ops = zynqmp_pm_get_eemi_ops();
 if (IS_ERR(eemi_ops))
  return PTR_ERR(eemi_ops);

 priv->dev = dev;
 econfig.dev = dev;
 econfig.reg_read = zynqmp_nvmem_read;
 econfig.priv = priv;

 priv->nvmem = devm_nvmem_register(dev, &econfig);

 return PTR_ERR_OR_ZERO(priv->nvmem);
}
