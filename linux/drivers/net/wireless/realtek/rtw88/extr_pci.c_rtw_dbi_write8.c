
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct rtw_dev {int dummy; } ;


 int BIT (int ) ;
 scalar_t__ REG_DBI_FLAG_V1 ;
 scalar_t__ REG_DBI_WDATA_V1 ;
 int WARN (scalar_t__,char*) ;
 scalar_t__ rtw_read8 (struct rtw_dev*,scalar_t__) ;
 int rtw_write16 (struct rtw_dev*,scalar_t__,int) ;
 int rtw_write8 (struct rtw_dev*,scalar_t__,int) ;
 int udelay (int) ;

__attribute__((used)) static void rtw_dbi_write8(struct rtw_dev *rtwdev, u16 addr, u8 data)
{
 u16 write_addr;
 u16 remainder = addr & 0x3;
 u8 flag;
 u8 cnt = 20;

 write_addr = ((addr & 0x0ffc) | (BIT(0) << (remainder + 12)));
 rtw_write8(rtwdev, REG_DBI_WDATA_V1 + remainder, data);
 rtw_write16(rtwdev, REG_DBI_FLAG_V1, write_addr);
 rtw_write8(rtwdev, REG_DBI_FLAG_V1 + 2, 0x01);

 flag = rtw_read8(rtwdev, REG_DBI_FLAG_V1 + 2);
 while (flag && (cnt != 0)) {
  udelay(10);
  flag = rtw_read8(rtwdev, REG_DBI_FLAG_V1 + 2);
  cnt--;
 }

 WARN(flag, "DBI write fail\n");
}
