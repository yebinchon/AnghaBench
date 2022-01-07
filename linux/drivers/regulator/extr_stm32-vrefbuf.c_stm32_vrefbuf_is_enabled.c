
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_vrefbuf {int dev; scalar_t__ base; } ;
struct regulator_dev {int dummy; } ;


 int STM32_ENVR ;
 scalar_t__ STM32_VREFBUF_CSR ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int pm_runtime_put_noidle (int ) ;
 struct stm32_vrefbuf* rdev_get_drvdata (struct regulator_dev*) ;
 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static int stm32_vrefbuf_is_enabled(struct regulator_dev *rdev)
{
 struct stm32_vrefbuf *priv = rdev_get_drvdata(rdev);
 int ret;

 ret = pm_runtime_get_sync(priv->dev);
 if (ret < 0) {
  pm_runtime_put_noidle(priv->dev);
  return ret;
 }

 ret = readl_relaxed(priv->base + STM32_VREFBUF_CSR) & STM32_ENVR;

 pm_runtime_mark_last_busy(priv->dev);
 pm_runtime_put_autosuspend(priv->dev);

 return ret;
}
