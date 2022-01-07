
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtw_table {int dummy; } ;
struct rtw_dev {int dummy; } ;


 int mdelay (int) ;
 int msleep (int) ;
 int rtw_write32 (struct rtw_dev*,int,int) ;
 int udelay (int) ;
 int usleep_range (int,int) ;

void rtw_phy_cfg_bb(struct rtw_dev *rtwdev, const struct rtw_table *tbl,
      u32 addr, u32 data)
{
 if (addr == 0xfe)
  msleep(50);
 else if (addr == 0xfd)
  mdelay(5);
 else if (addr == 0xfc)
  mdelay(1);
 else if (addr == 0xfb)
  usleep_range(50, 60);
 else if (addr == 0xfa)
  udelay(5);
 else if (addr == 0xf9)
  udelay(1);
 else
  rtw_write32(rtwdev, addr, data);
}
