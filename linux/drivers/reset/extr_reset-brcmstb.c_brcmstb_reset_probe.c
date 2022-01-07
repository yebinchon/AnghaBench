
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int start; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int nr_resets; int of_node; int * ops; int owner; } ;
struct brcmstb_reset {TYPE_1__ rcdev; int base; } ;


 int DIV_ROUND_DOWN_ULL (int ,int ) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int IS_ALIGNED (int ,int ) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SW_INIT_BANK_SIZE ;
 int THIS_MODULE ;
 int brcmstb_reset_ops ;
 int dev_err (struct device*,char*) ;
 int dev_set_drvdata (struct device*,struct brcmstb_reset*) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct brcmstb_reset* devm_kzalloc (struct device*,int,int ) ;
 int devm_reset_controller_register (struct device*,TYPE_1__*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int brcmstb_reset_probe(struct platform_device *pdev)
{
 struct device *kdev = &pdev->dev;
 struct brcmstb_reset *priv;
 struct resource *res;

 priv = devm_kzalloc(kdev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!IS_ALIGNED(res->start, SW_INIT_BANK_SIZE) ||
     !IS_ALIGNED(resource_size(res), SW_INIT_BANK_SIZE)) {
  dev_err(kdev, "incorrect register range\n");
  return -EINVAL;
 }

 priv->base = devm_ioremap_resource(kdev, res);
 if (IS_ERR(priv->base))
  return PTR_ERR(priv->base);

 dev_set_drvdata(kdev, priv);

 priv->rcdev.owner = THIS_MODULE;
 priv->rcdev.nr_resets = DIV_ROUND_DOWN_ULL(resource_size(res),
         SW_INIT_BANK_SIZE) * 32;
 priv->rcdev.ops = &brcmstb_reset_ops;
 priv->rcdev.of_node = kdev->of_node;


 return devm_reset_controller_register(kdev, &priv->rcdev);
}
