
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtw_hal {int chip_version; int fab_version; int mp_chip; int rf_path_num; int rcr; void* antenna_rx; void* antenna_tx; int rf_type; int cut_version; } ;
struct rtw_efuse {int protect_size; int logical_size; int physical_size; } ;
struct TYPE_2__ {int rpwm_addr; } ;
struct rtw_dev {struct rtw_hal hal; TYPE_1__ hci; struct rtw_efuse efuse; struct rtw_chip_info* chip; } ;
struct rtw_chip_info {int ptct_efuse_size; int log_efuse_size; int phy_efuse_size; } ;


 void* BB_PATH_A ;
 void* BB_PATH_AB ;
 int BIT_GET_CHIP_VER (int) ;
 int BIT_GET_VENDOR_ID (int) ;
 int BIT_RF_TYPE_ID ;
 int BIT_RTL_ID ;
 int BIT_VHT_DACK ;
 int EINVAL ;
 int REG_SYS_CFG1 ;
 int RF_1T1R ;
 int RF_2T2R ;

 int rtw_err (struct rtw_dev*,char*) ;
 int rtw_hci_type (struct rtw_dev*) ;
 int rtw_read32 (struct rtw_dev*,int ) ;

__attribute__((used)) static int rtw_chip_parameter_setup(struct rtw_dev *rtwdev)
{
 struct rtw_chip_info *chip = rtwdev->chip;
 struct rtw_hal *hal = &rtwdev->hal;
 struct rtw_efuse *efuse = &rtwdev->efuse;
 int ret = 0;

 switch (rtw_hci_type(rtwdev)) {
 case 128:
  rtwdev->hci.rpwm_addr = 0x03d9;
  break;
 default:
  rtw_err(rtwdev, "unsupported hci type\n");
  return -EINVAL;
 }

 hal->chip_version = rtw_read32(rtwdev, REG_SYS_CFG1);
 hal->fab_version = BIT_GET_VENDOR_ID(hal->chip_version) >> 2;
 hal->cut_version = BIT_GET_CHIP_VER(hal->chip_version);
 hal->mp_chip = (hal->chip_version & BIT_RTL_ID) ? 0 : 1;
 if (hal->chip_version & BIT_RF_TYPE_ID) {
  hal->rf_type = RF_2T2R;
  hal->rf_path_num = 2;
  hal->antenna_tx = BB_PATH_AB;
  hal->antenna_rx = BB_PATH_AB;
 } else {
  hal->rf_type = RF_1T1R;
  hal->rf_path_num = 1;
  hal->antenna_tx = BB_PATH_A;
  hal->antenna_rx = BB_PATH_A;
 }

 if (hal->fab_version == 2)
  hal->fab_version = 1;
 else if (hal->fab_version == 1)
  hal->fab_version = 2;

 efuse->physical_size = chip->phy_efuse_size;
 efuse->logical_size = chip->log_efuse_size;
 efuse->protect_size = chip->ptct_efuse_size;


 rtwdev->hal.rcr |= BIT_VHT_DACK;

 return ret;
}
