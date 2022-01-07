
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtw_table {int rf_path; } ;
struct rtw_dev {int dummy; } ;


 int RFREG_MASK ;
 int msleep (int) ;
 int rtw_write_rf (struct rtw_dev*,int ,int,int ,int) ;
 int udelay (int) ;
 int usleep_range (int,int) ;

void rtw_phy_cfg_rf(struct rtw_dev *rtwdev, const struct rtw_table *tbl,
      u32 addr, u32 data)
{
 if (addr == 0xffe) {
  msleep(50);
 } else if (addr == 0xfe) {
  usleep_range(100, 110);
 } else {
  rtw_write_rf(rtwdev, tbl->rf_path, addr, RFREG_MASK, data);
  udelay(1);
 }
}
