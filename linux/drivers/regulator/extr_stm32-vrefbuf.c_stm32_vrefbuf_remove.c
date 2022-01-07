
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_vrefbuf {int clk; } ;
struct regulator_dev {int dummy; } ;
struct platform_device {int dev; } ;


 int clk_disable_unprepare (int ) ;
 struct regulator_dev* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_noidle (int *) ;
 int pm_runtime_set_suspended (int *) ;
 struct stm32_vrefbuf* rdev_get_drvdata (struct regulator_dev*) ;
 int regulator_unregister (struct regulator_dev*) ;

__attribute__((used)) static int stm32_vrefbuf_remove(struct platform_device *pdev)
{
 struct regulator_dev *rdev = platform_get_drvdata(pdev);
 struct stm32_vrefbuf *priv = rdev_get_drvdata(rdev);

 pm_runtime_get_sync(&pdev->dev);
 regulator_unregister(rdev);
 clk_disable_unprepare(priv->clk);
 pm_runtime_disable(&pdev->dev);
 pm_runtime_set_suspended(&pdev->dev);
 pm_runtime_put_noidle(&pdev->dev);

 return 0;
}
