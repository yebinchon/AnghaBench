
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtw_dev {int dummy; } ;


 int RFREG_MASK ;
 int rtw_write_rf (struct rtw_dev*,int ,int,int ,int) ;
 int udelay (int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void rtw8822c_dpk_rxbb_dc_cal(struct rtw_dev *rtwdev, u8 path)
{
 rtw_write_rf(rtwdev, path, 0x92, RFREG_MASK, 0x84800);
 udelay(5);
 rtw_write_rf(rtwdev, path, 0x92, RFREG_MASK, 0x84801);
 usleep_range(600, 610);
 rtw_write_rf(rtwdev, path, 0x92, RFREG_MASK, 0x84800);
}
