
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zx2967_thermal_priv {int clk_apb; int clk_topcrm; int tzd; } ;
struct platform_device {int dev; } ;


 int clk_disable_unprepare (int ) ;
 struct zx2967_thermal_priv* platform_get_drvdata (struct platform_device*) ;
 int thermal_zone_of_sensor_unregister (int *,int ) ;

__attribute__((used)) static int zx2967_thermal_exit(struct platform_device *pdev)
{
 struct zx2967_thermal_priv *priv = platform_get_drvdata(pdev);

 thermal_zone_of_sensor_unregister(&pdev->dev, priv->tzd);
 clk_disable_unprepare(priv->clk_topcrm);
 clk_disable_unprepare(priv->clk_apb);

 return 0;
}
