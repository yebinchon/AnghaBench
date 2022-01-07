
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_vrefbuf {int dev; scalar_t__ base; } ;
struct regulator_dev {int dev; } ;


 int STM32_ENVR ;
 int STM32_HIZ ;
 scalar_t__ STM32_VREFBUF_CSR ;
 int STM32_VRR ;
 int dev_err (int *,char*) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int pm_runtime_put_noidle (int ) ;
 struct stm32_vrefbuf* rdev_get_drvdata (struct regulator_dev*) ;
 int readl_poll_timeout (scalar_t__,int,int,int,int) ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int stm32_vrefbuf_enable(struct regulator_dev *rdev)
{
 struct stm32_vrefbuf *priv = rdev_get_drvdata(rdev);
 u32 val;
 int ret;

 ret = pm_runtime_get_sync(priv->dev);
 if (ret < 0) {
  pm_runtime_put_noidle(priv->dev);
  return ret;
 }

 val = readl_relaxed(priv->base + STM32_VREFBUF_CSR);
 val = (val & ~STM32_HIZ) | STM32_ENVR;
 writel_relaxed(val, priv->base + STM32_VREFBUF_CSR);







 ret = readl_poll_timeout(priv->base + STM32_VREFBUF_CSR, val,
     val & STM32_VRR, 650, 10000);
 if (ret) {
  dev_err(&rdev->dev, "stm32 vrefbuf timed out!\n");
  val = readl_relaxed(priv->base + STM32_VREFBUF_CSR);
  val = (val & ~STM32_ENVR) | STM32_HIZ;
  writel_relaxed(val, priv->base + STM32_VREFBUF_CSR);
 }

 pm_runtime_mark_last_busy(priv->dev);
 pm_runtime_put_autosuspend(priv->dev);

 return ret;
}
