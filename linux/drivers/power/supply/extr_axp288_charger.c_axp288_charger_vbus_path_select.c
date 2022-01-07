
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct axp288_chrg_info {TYPE_1__* pdev; int regmap; } ;
struct TYPE_2__ {int dev; } ;


 int AXP20X_VBUS_IPSOUT_MGMT ;
 int VBUS_ISPOUT_VBUS_PATH_DIS ;
 int dev_err (int *,char*,int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int axp288_charger_vbus_path_select(struct axp288_chrg_info *info,
        bool enable)
{
 int ret;

 if (enable)
  ret = regmap_update_bits(info->regmap, AXP20X_VBUS_IPSOUT_MGMT,
     VBUS_ISPOUT_VBUS_PATH_DIS, 0);
 else
  ret = regmap_update_bits(info->regmap, AXP20X_VBUS_IPSOUT_MGMT,
   VBUS_ISPOUT_VBUS_PATH_DIS, VBUS_ISPOUT_VBUS_PATH_DIS);

 if (ret < 0)
  dev_err(&info->pdev->dev, "axp288 vbus path select %d\n", ret);

 return ret;
}
