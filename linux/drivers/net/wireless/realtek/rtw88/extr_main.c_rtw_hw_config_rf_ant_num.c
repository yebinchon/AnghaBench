
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct rtw_hal {scalar_t__ rf_path_num; void* antenna_rx; void* antenna_tx; int rf_type; } ;
struct rtw_dev {struct rtw_hal hal; } ;


 void* BB_PATH_A ;
 scalar_t__ EFUSE_HW_CAP_IGNORE ;
 int RF_1T1R ;
 int WARN (int,char*) ;

__attribute__((used)) static void rtw_hw_config_rf_ant_num(struct rtw_dev *rtwdev, u8 hw_ant_num)
{
 struct rtw_hal *hal = &rtwdev->hal;

 if (hw_ant_num == EFUSE_HW_CAP_IGNORE ||
     hw_ant_num >= hal->rf_path_num)
  return;

 switch (hw_ant_num) {
 case 1:
  hal->rf_type = RF_1T1R;
  hal->rf_path_num = 1;
  hal->antenna_tx = BB_PATH_A;
  hal->antenna_rx = BB_PATH_A;
  break;
 default:
  WARN(1, "invalid hw configuration from efuse\n");
  break;
 }
}
