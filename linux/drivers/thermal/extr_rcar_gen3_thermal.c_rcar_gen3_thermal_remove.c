
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_gen3_thermal_priv {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;


 struct rcar_gen3_thermal_priv* dev_get_drvdata (struct device*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_put (struct device*) ;
 int rcar_thermal_irq_set (struct rcar_gen3_thermal_priv*,int) ;

__attribute__((used)) static int rcar_gen3_thermal_remove(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct rcar_gen3_thermal_priv *priv = dev_get_drvdata(dev);

 rcar_thermal_irq_set(priv, 0);

 pm_runtime_put(dev);
 pm_runtime_disable(dev);

 return 0;
}
