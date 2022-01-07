
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct stm32_pwr_reg {scalar_t__ base; } ;
struct regulator_dev {int dev; TYPE_1__* desc; } ;
struct TYPE_2__ {int enable_mask; } ;


 scalar_t__ REG_PWR_CR3 ;
 int dev_err (int *,char*) ;
 struct stm32_pwr_reg* rdev_get_drvdata (struct regulator_dev*) ;
 int readl_relaxed (scalar_t__) ;
 int readx_poll_timeout (int ,struct regulator_dev*,int ,int,int,int) ;
 int stm32_pwr_reg_is_ready ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static int stm32_pwr_reg_disable(struct regulator_dev *rdev)
{
 struct stm32_pwr_reg *priv = rdev_get_drvdata(rdev);
 int ret;
 u32 val;

 val = readl_relaxed(priv->base + REG_PWR_CR3);
 val &= ~rdev->desc->enable_mask;
 writel_relaxed(val, priv->base + REG_PWR_CR3);


 ret = readx_poll_timeout(stm32_pwr_reg_is_ready, rdev, val, !val,
     100, 20 * 1000);
 if (ret)
  dev_err(&rdev->dev, "regulator disable timed out!\n");

 return ret;
}
