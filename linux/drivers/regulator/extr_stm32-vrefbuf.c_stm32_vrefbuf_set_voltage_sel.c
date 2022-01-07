
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_vrefbuf {int dev; scalar_t__ base; } ;
struct regulator_dev {int dummy; } ;


 int FIELD_PREP (int,unsigned int) ;
 scalar_t__ STM32_VREFBUF_CSR ;
 int STM32_VRS ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int pm_runtime_put_noidle (int ) ;
 struct stm32_vrefbuf* rdev_get_drvdata (struct regulator_dev*) ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int stm32_vrefbuf_set_voltage_sel(struct regulator_dev *rdev,
      unsigned sel)
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
 val = (val & ~STM32_VRS) | FIELD_PREP(STM32_VRS, sel);
 writel_relaxed(val, priv->base + STM32_VREFBUF_CSR);

 pm_runtime_mark_last_busy(priv->dev);
 pm_runtime_put_autosuspend(priv->dev);

 return 0;
}
