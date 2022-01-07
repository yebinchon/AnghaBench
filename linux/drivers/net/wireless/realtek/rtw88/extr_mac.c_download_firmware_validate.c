
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtw_dev {int dummy; } ;


 int EINVAL ;
 int FW_KEY_MASK ;
 int FW_READY ;
 int FW_READY_MASK ;
 int ILLEGAL_KEY_GROUP ;
 int REG_FW_DBG7 ;
 int REG_MCUFW_CTRL ;
 int check_hw_ready (struct rtw_dev*,int ,int ,int ) ;
 int rtw_err (struct rtw_dev*,char*) ;
 int rtw_read32 (struct rtw_dev*,int ) ;

__attribute__((used)) static int download_firmware_validate(struct rtw_dev *rtwdev)
{
 u32 fw_key;

 if (!check_hw_ready(rtwdev, REG_MCUFW_CTRL, FW_READY_MASK, FW_READY)) {
  fw_key = rtw_read32(rtwdev, REG_FW_DBG7) & FW_KEY_MASK;
  if (fw_key == ILLEGAL_KEY_GROUP)
   rtw_err(rtwdev, "invalid fw key\n");
  return -EINVAL;
 }

 return 0;
}
