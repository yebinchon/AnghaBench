
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtw_table {int dummy; } ;
struct rtw_dev {int dummy; } ;


 int rtw_write32 (struct rtw_dev*,int ,int ) ;

void rtw_phy_cfg_agc(struct rtw_dev *rtwdev, const struct rtw_table *tbl,
       u32 addr, u32 data)
{
 rtw_write32(rtwdev, addr, data);
}
