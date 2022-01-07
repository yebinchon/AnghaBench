
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct mlxreg_hotplug_priv_data {int irq; } ;


 struct mlxreg_hotplug_priv_data* dev_get_drvdata (int *) ;
 int devm_free_irq (int *,int ,struct mlxreg_hotplug_priv_data*) ;
 int mlxreg_hotplug_unset_irq (struct mlxreg_hotplug_priv_data*) ;

__attribute__((used)) static int mlxreg_hotplug_remove(struct platform_device *pdev)
{
 struct mlxreg_hotplug_priv_data *priv = dev_get_drvdata(&pdev->dev);


 mlxreg_hotplug_unset_irq(priv);
 devm_free_irq(&pdev->dev, priv->irq, priv);

 return 0;
}
