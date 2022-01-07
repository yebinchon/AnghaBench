
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int nr_resets; int of_node; int * ops; int owner; } ;
struct zynq_reset_data {TYPE_2__ rcdev; int offset; int slcr; } ;
struct resource {int start; } ;
struct TYPE_5__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;


 int BITS_PER_LONG ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int dev_err (TYPE_1__*,char*) ;
 struct zynq_reset_data* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_reset_controller_register (TYPE_1__*,TYPE_2__*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct zynq_reset_data*) ;
 int resource_size (struct resource*) ;
 int syscon_regmap_lookup_by_phandle (int ,char*) ;
 int zynq_reset_ops ;

__attribute__((used)) static int zynq_reset_probe(struct platform_device *pdev)
{
 struct resource *res;
 struct zynq_reset_data *priv;

 priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;
 platform_set_drvdata(pdev, priv);

 priv->slcr = syscon_regmap_lookup_by_phandle(pdev->dev.of_node,
           "syscon");
 if (IS_ERR(priv->slcr)) {
  dev_err(&pdev->dev, "unable to get zynq-slcr regmap");
  return PTR_ERR(priv->slcr);
 }

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res) {
  dev_err(&pdev->dev, "missing IO resource\n");
  return -ENODEV;
 }

 priv->offset = res->start;

 priv->rcdev.owner = THIS_MODULE;
 priv->rcdev.nr_resets = resource_size(res) / 4 * BITS_PER_LONG;
 priv->rcdev.ops = &zynq_reset_ops;
 priv->rcdev.of_node = pdev->dev.of_node;

 return devm_reset_controller_register(&pdev->dev, &priv->rcdev);
}
