
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_fw_state {int completion; struct firmware const* firmware; } ;
struct rtw_dev {struct rtw_fw_state fw; } ;
struct firmware {int dummy; } ;


 int complete_all (int *) ;
 int rtw_err (struct rtw_dev*,char*) ;

__attribute__((used)) static void rtw_load_firmware_cb(const struct firmware *firmware, void *context)
{
 struct rtw_dev *rtwdev = context;
 struct rtw_fw_state *fw = &rtwdev->fw;

 if (!firmware)
  rtw_err(rtwdev, "failed to request firmware\n");

 fw->firmware = firmware;
 complete_all(&fw->completion);
}
