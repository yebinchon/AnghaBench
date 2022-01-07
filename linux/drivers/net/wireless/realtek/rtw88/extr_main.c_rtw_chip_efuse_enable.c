
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_fw_state {int firmware; int completion; } ;
struct rtw_dev {struct rtw_fw_state fw; } ;


 int C2H_HW_FEATURE_DUMP ;
 int EINVAL ;
 int REG_C2HEVT ;
 int rtw_download_firmware (struct rtw_dev*,struct rtw_fw_state*) ;
 int rtw_err (struct rtw_dev*,char*) ;
 int rtw_hci_setup (struct rtw_dev*) ;
 int rtw_mac_power_off (struct rtw_dev*) ;
 int rtw_mac_power_on (struct rtw_dev*) ;
 int rtw_write8 (struct rtw_dev*,int ,int ) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int rtw_chip_efuse_enable(struct rtw_dev *rtwdev)
{
 struct rtw_fw_state *fw = &rtwdev->fw;
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

 rtw_write8(rtwdev, REG_C2HEVT, C2H_HW_FEATURE_DUMP);

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

 return 0;

err_off:
 rtw_mac_power_off(rtwdev);

err:
 return ret;
}
