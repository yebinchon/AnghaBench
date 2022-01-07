
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct axp288_fg_info {void* status; TYPE_1__* pdev; int * iio_channel; } ;
struct TYPE_2__ {int dev; } ;


 int AXP20X_FG_RES ;
 int AXP20X_PWR_INPUT_STATUS ;
 size_t BAT_D_CURR ;
 int FG_REP_CAP_VALID ;
 void* POWER_SUPPLY_STATUS_CHARGING ;
 void* POWER_SUPPLY_STATUS_DISCHARGING ;
 void* POWER_SUPPLY_STATUS_FULL ;
 int PS_STAT_BAT_CHRG_DIR ;
 int PS_STAT_VBUS_VALID ;
 int dev_err (int *,char*,int) ;
 int fuel_gauge_reg_readb (struct axp288_fg_info*,int ) ;
 int iio_read_channel_raw (int ,int*) ;

__attribute__((used)) static void fuel_gauge_get_status(struct axp288_fg_info *info)
{
 int pwr_stat, fg_res, curr, ret;

 pwr_stat = fuel_gauge_reg_readb(info, AXP20X_PWR_INPUT_STATUS);
 if (pwr_stat < 0) {
  dev_err(&info->pdev->dev,
   "PWR STAT read failed:%d\n", pwr_stat);
  return;
 }


 if (!(pwr_stat & PS_STAT_VBUS_VALID))
  goto not_full;

 fg_res = fuel_gauge_reg_readb(info, AXP20X_FG_RES);
 if (fg_res < 0) {
  dev_err(&info->pdev->dev, "FG RES read failed: %d\n", fg_res);
  return;
 }
 if (!(fg_res & FG_REP_CAP_VALID))
  goto not_full;

 fg_res &= ~FG_REP_CAP_VALID;
 if (fg_res == 100) {
  info->status = POWER_SUPPLY_STATUS_FULL;
  return;
 }






 if (fg_res < 90 || (pwr_stat & PS_STAT_BAT_CHRG_DIR))
  goto not_full;

 ret = iio_read_channel_raw(info->iio_channel[BAT_D_CURR], &curr);
 if (ret < 0) {
  dev_err(&info->pdev->dev, "FG get current failed: %d\n", ret);
  return;
 }
 if (curr == 0) {
  info->status = POWER_SUPPLY_STATUS_FULL;
  return;
 }

not_full:
 if (pwr_stat & PS_STAT_BAT_CHRG_DIR)
  info->status = POWER_SUPPLY_STATUS_CHARGING;
 else
  info->status = POWER_SUPPLY_STATUS_DISCHARGING;
}
