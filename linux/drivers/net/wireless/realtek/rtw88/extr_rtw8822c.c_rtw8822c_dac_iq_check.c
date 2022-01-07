
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtw_dev {int dummy; } ;


 int RTW_DBG_RFK ;
 int rtw_dbg (struct rtw_dev*,int ,char*) ;

__attribute__((used)) static bool rtw8822c_dac_iq_check(struct rtw_dev *rtwdev, u32 value)
{
 bool ret = 1;

 if ((value >= 0x200 && (0x400 - value) > 0x64) ||
     (value < 0x200 && value > 0x64)) {
  ret = 0;
  rtw_dbg(rtwdev, RTW_DBG_RFK, "[DACK] Error overflow\n");
 }

 return ret;
}
