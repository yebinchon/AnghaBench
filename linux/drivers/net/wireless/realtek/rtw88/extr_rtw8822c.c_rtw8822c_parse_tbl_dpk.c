
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtw_table {int size; struct dpk_cfg_pair* data; } ;
struct rtw_dev {int dummy; } ;
struct dpk_cfg_pair {int data; int bitmask; int addr; } ;


 int BUILD_BUG_ON (int) ;
 int rtw_write32_mask (struct rtw_dev*,int ,int ,int ) ;

void rtw8822c_parse_tbl_dpk(struct rtw_dev *rtwdev,
       const struct rtw_table *tbl)
{
 const struct dpk_cfg_pair *p = tbl->data;
 const struct dpk_cfg_pair *end = p + tbl->size / 3;

 BUILD_BUG_ON(sizeof(struct dpk_cfg_pair) != sizeof(u32) * 3);

 for (; p < end; p++)
  rtw_write32_mask(rtwdev, p->addr, p->bitmask, p->data);
}
