
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_pwr_reg {int ready_mask; scalar_t__ base; } ;
struct regulator_dev {int dummy; } ;


 scalar_t__ REG_PWR_CR3 ;
 struct stm32_pwr_reg* rdev_get_drvdata (struct regulator_dev*) ;
 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static int stm32_pwr_reg_is_ready(struct regulator_dev *rdev)
{
 struct stm32_pwr_reg *priv = rdev_get_drvdata(rdev);
 u32 val;

 val = readl_relaxed(priv->base + REG_PWR_CR3);

 return (val & priv->ready_mask);
}
