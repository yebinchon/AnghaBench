
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int regmap; } ;


 int STM32MP1_SYSCFG_EN_BOOSTER_MASK ;
 int STM32MP1_SYSCFG_PMCCLRR ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int stm32mp1_booster_disable(struct regulator_dev *rdev)
{
 return regmap_write(rdev->regmap, STM32MP1_SYSCFG_PMCCLRR,
       STM32MP1_SYSCFG_EN_BOOSTER_MASK);
}
