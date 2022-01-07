
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtw_table {int size; struct phy_pg_cfg_pair* data; } ;
struct rtw_dev {int dummy; } ;
struct phy_pg_cfg_pair {int addr; int data; int bitmask; int tx_num; int rf_path; int band; } ;


 int BUILD_BUG_ON (int) ;
 int msleep (int) ;
 int rtw_phy_store_tx_power_by_rate (struct rtw_dev*,int ,int ,int ,int,int ,int ) ;

void rtw_parse_tbl_bb_pg(struct rtw_dev *rtwdev, const struct rtw_table *tbl)
{
 const struct phy_pg_cfg_pair *p = tbl->data;
 const struct phy_pg_cfg_pair *end = p + tbl->size / 6;

 BUILD_BUG_ON(sizeof(struct phy_pg_cfg_pair) != sizeof(u32) * 6);

 for (; p < end; p++) {
  if (p->addr == 0xfe || p->addr == 0xffe) {
   msleep(50);
   continue;
  }
  rtw_phy_store_tx_power_by_rate(rtwdev, p->band, p->rf_path,
            p->tx_num, p->addr, p->bitmask,
            p->data);
 }
}
