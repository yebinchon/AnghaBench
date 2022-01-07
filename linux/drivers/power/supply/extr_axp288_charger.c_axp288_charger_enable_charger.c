
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct axp288_chrg_info {TYPE_1__* pdev; int regmap; } ;
struct TYPE_2__ {int dev; } ;


 int AXP20X_CHRG_CTRL1 ;
 int CHRG_CCCV_CHG_EN ;
 int dev_err (int *,char*,int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int axp288_charger_enable_charger(struct axp288_chrg_info *info,
        bool enable)
{
 int ret;

 if (enable)
  ret = regmap_update_bits(info->regmap, AXP20X_CHRG_CTRL1,
    CHRG_CCCV_CHG_EN, CHRG_CCCV_CHG_EN);
 else
  ret = regmap_update_bits(info->regmap, AXP20X_CHRG_CTRL1,
    CHRG_CCCV_CHG_EN, 0);
 if (ret < 0)
  dev_err(&info->pdev->dev, "axp288 enable charger %d\n", ret);

 return ret;
}
