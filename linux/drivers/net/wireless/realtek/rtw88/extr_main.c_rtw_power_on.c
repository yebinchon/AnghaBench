
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rtw_fw_state {int firmware; int completion; } ;
struct TYPE_4__ {int btcoex; } ;
struct rtw_dev {TYPE_2__ efuse; struct rtw_fw_state fw; struct rtw_chip_info* chip; } ;
struct rtw_chip_info {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* phy_set_param ) (struct rtw_dev*) ;} ;


 int EINVAL ;
 int rtw_coex_init_hw_config (struct rtw_dev*,int) ;
 int rtw_coex_power_on_setting (struct rtw_dev*) ;
 int rtw_download_firmware (struct rtw_dev*,struct rtw_fw_state*) ;
 int rtw_err (struct rtw_dev*,char*) ;
 int rtw_fw_send_general_info (struct rtw_dev*) ;
 int rtw_fw_send_phydm_info (struct rtw_dev*) ;
 int rtw_hci_setup (struct rtw_dev*) ;
 int rtw_hci_start (struct rtw_dev*) ;
 int rtw_mac_init (struct rtw_dev*) ;
 int rtw_mac_power_off (struct rtw_dev*) ;
 int rtw_mac_power_on (struct rtw_dev*) ;
 int stub1 (struct rtw_dev*) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int rtw_power_on(struct rtw_dev *rtwdev)
{
 struct rtw_chip_info *chip = rtwdev->chip;
 struct rtw_fw_state *fw = &rtwdev->fw;
 bool wifi_only;
 int ret;

 ret = rtw_hci_setup(rtwdev);
 if (ret) {
  rtw_err(rtwdev, "failed to setup hci\n");
  goto err;
 }


 ret = rtw_mac_power_on(rtwdev);
 if (ret) {
  rtw_err(rtwdev, "failed to power on mac\n");
  goto err;
 }

 wait_for_completion(&fw->completion);
 if (!fw->firmware) {
  ret = -EINVAL;
  rtw_err(rtwdev, "failed to load firmware\n");
  goto err;
 }

 ret = rtw_download_firmware(rtwdev, fw);
 if (ret) {
  rtw_err(rtwdev, "failed to download firmware\n");
  goto err_off;
 }


 ret = rtw_mac_init(rtwdev);
 if (ret) {
  rtw_err(rtwdev, "failed to configure mac\n");
  goto err_off;
 }

 chip->ops->phy_set_param(rtwdev);

 ret = rtw_hci_start(rtwdev);
 if (ret) {
  rtw_err(rtwdev, "failed to start hci\n");
  goto err_off;
 }


 rtw_fw_send_general_info(rtwdev);
 rtw_fw_send_phydm_info(rtwdev);

 wifi_only = !rtwdev->efuse.btcoex;
 rtw_coex_power_on_setting(rtwdev);
 rtw_coex_init_hw_config(rtwdev, wifi_only);

 return 0;

err_off:
 rtw_mac_power_off(rtwdev);

err:
 return ret;
}
