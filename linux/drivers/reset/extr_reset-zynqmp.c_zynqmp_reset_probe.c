
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int nr_resets; int of_node; int owner; int * ops; } ;
struct zynqmp_reset_data {TYPE_2__ rcdev; int eemi_ops; } ;
struct TYPE_4__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int ZYNQMP_NR_RESETS ;
 struct zynqmp_reset_data* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_reset_controller_register (TYPE_1__*,TYPE_2__*) ;
 int platform_set_drvdata (struct platform_device*,struct zynqmp_reset_data*) ;
 int zynqmp_pm_get_eemi_ops () ;
 int zynqmp_reset_ops ;

__attribute__((used)) static int zynqmp_reset_probe(struct platform_device *pdev)
{
 struct zynqmp_reset_data *priv;

 priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->eemi_ops = zynqmp_pm_get_eemi_ops();
 if (IS_ERR(priv->eemi_ops))
  return PTR_ERR(priv->eemi_ops);

 platform_set_drvdata(pdev, priv);

 priv->rcdev.ops = &zynqmp_reset_ops;
 priv->rcdev.owner = THIS_MODULE;
 priv->rcdev.of_node = pdev->dev.of_node;
 priv->rcdev.nr_resets = ZYNQMP_NR_RESETS;

 return devm_reset_controller_register(&pdev->dev, &priv->rcdev);
}
