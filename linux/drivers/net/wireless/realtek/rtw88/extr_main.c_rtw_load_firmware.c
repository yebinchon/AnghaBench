
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_fw_state {int completion; } ;
struct rtw_dev {int dev; struct rtw_fw_state fw; } ;


 int GFP_KERNEL ;
 int THIS_MODULE ;
 int init_completion (int *) ;
 int request_firmware_nowait (int ,int,char const*,int ,int ,struct rtw_dev*,int ) ;
 int rtw_err (struct rtw_dev*,char*) ;
 int rtw_load_firmware_cb ;

__attribute__((used)) static int rtw_load_firmware(struct rtw_dev *rtwdev, const char *fw_name)
{
 struct rtw_fw_state *fw = &rtwdev->fw;
 int ret;

 init_completion(&fw->completion);

 ret = request_firmware_nowait(THIS_MODULE, 1, fw_name, rtwdev->dev,
          GFP_KERNEL, rtwdev, rtw_load_firmware_cb);
 if (ret) {
  rtw_err(rtwdev, "async firmware request failed\n");
  return ret;
 }

 return 0;
}
