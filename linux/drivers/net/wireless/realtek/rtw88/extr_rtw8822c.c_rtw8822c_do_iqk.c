
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtw_iqk_para {int clear; int member_0; } ;
struct rtw_dev {int dummy; } ;


 int REG_IQKSTAT ;
 int REG_RPT_CIP ;
 int RTW_DBG_RFK ;
 int msleep (int) ;
 int rtw_dbg (struct rtw_dev*,int ,char*,int) ;
 int rtw_fw_do_iqk (struct rtw_dev*,struct rtw_iqk_para*) ;
 int rtw_read8 (struct rtw_dev*,int ) ;
 int rtw_write8 (struct rtw_dev*,int ,int) ;

__attribute__((used)) static void rtw8822c_do_iqk(struct rtw_dev *rtwdev)
{
 struct rtw_iqk_para para = {0};
 u8 iqk_chk;
 int counter;

 para.clear = 1;
 rtw_fw_do_iqk(rtwdev, &para);

 for (counter = 0; counter < 300; counter++) {
  iqk_chk = rtw_read8(rtwdev, REG_RPT_CIP);
  if (iqk_chk == 0xaa)
   break;
  msleep(20);
 }
 rtw_write8(rtwdev, REG_IQKSTAT, 0x0);

 rtw_dbg(rtwdev, RTW_DBG_RFK, "iqk counter=%d\n", counter);
}
