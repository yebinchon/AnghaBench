
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct axp288_chrg_info {TYPE_1__* pdev; int regmap; } ;
struct TYPE_2__ {int dev; } ;


 int AXP20X_CHRG_BAK_CTRL ;
 int CHRG_VBUS_ILIM_100MA ;
 int CHRG_VBUS_ILIM_1500MA ;
 int CHRG_VBUS_ILIM_2000MA ;
 int CHRG_VBUS_ILIM_2500MA ;
 int CHRG_VBUS_ILIM_3000MA ;
 int CHRG_VBUS_ILIM_3500MA ;
 int CHRG_VBUS_ILIM_4000MA ;
 int CHRG_VBUS_ILIM_500MA ;
 int CHRG_VBUS_ILIM_900MA ;
 int CHRG_VBUS_ILIM_BIT_POS ;
 int CHRG_VBUS_ILIM_MASK ;
 int dev_err (int *,char*,int) ;
 int regmap_update_bits (int ,int ,int ,int) ;

__attribute__((used)) static inline int axp288_charger_set_vbus_inlmt(struct axp288_chrg_info *info,
        int inlmt)
{
 int ret;
 u8 reg_val;

 if (inlmt >= 4000000)
  reg_val = CHRG_VBUS_ILIM_4000MA << CHRG_VBUS_ILIM_BIT_POS;
 else if (inlmt >= 3500000)
  reg_val = CHRG_VBUS_ILIM_3500MA << CHRG_VBUS_ILIM_BIT_POS;
 else if (inlmt >= 3000000)
  reg_val = CHRG_VBUS_ILIM_3000MA << CHRG_VBUS_ILIM_BIT_POS;
 else if (inlmt >= 2500000)
  reg_val = CHRG_VBUS_ILIM_2500MA << CHRG_VBUS_ILIM_BIT_POS;
 else if (inlmt >= 2000000)
  reg_val = CHRG_VBUS_ILIM_2000MA << CHRG_VBUS_ILIM_BIT_POS;
 else if (inlmt >= 1500000)
  reg_val = CHRG_VBUS_ILIM_1500MA << CHRG_VBUS_ILIM_BIT_POS;
 else if (inlmt >= 900000)
  reg_val = CHRG_VBUS_ILIM_900MA << CHRG_VBUS_ILIM_BIT_POS;
 else if (inlmt >= 500000)
  reg_val = CHRG_VBUS_ILIM_500MA << CHRG_VBUS_ILIM_BIT_POS;
 else
  reg_val = CHRG_VBUS_ILIM_100MA << CHRG_VBUS_ILIM_BIT_POS;

 ret = regmap_update_bits(info->regmap, AXP20X_CHRG_BAK_CTRL,
     CHRG_VBUS_ILIM_MASK, reg_val);
 if (ret < 0)
  dev_err(&info->pdev->dev, "charger BAK control %d\n", ret);

 return ret;
}
