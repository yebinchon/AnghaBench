
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data; int addr; } ;
struct rtw_phy_cond {int branch; scalar_t__ neg; scalar_t__ pos; int member_0; } ;
union phy_table_tile {TYPE_1__ cfg; struct rtw_phy_cond cond; } ;
struct rtw_table {int size; int (* do_cfg ) (struct rtw_dev*,struct rtw_table const*,int ,int ) ;union phy_table_tile* data; } ;
struct rtw_dev {int dummy; } ;
struct phy_cfg_pair {int dummy; } ;






 int BUILD_BUG_ON (int) ;
 scalar_t__ check_positive (struct rtw_dev*,struct rtw_phy_cond) ;
 int stub1 (struct rtw_dev*,struct rtw_table const*,int ,int ) ;

void rtw_parse_tbl_phy_cond(struct rtw_dev *rtwdev, const struct rtw_table *tbl)
{
 const union phy_table_tile *p = tbl->data;
 const union phy_table_tile *end = p + tbl->size / 2;
 struct rtw_phy_cond pos_cond = {0};
 bool is_matched = 1, is_skipped = 0;

 BUILD_BUG_ON(sizeof(union phy_table_tile) != sizeof(struct phy_cfg_pair));

 for (; p < end; p++) {
  if (p->cond.pos) {
   switch (p->cond.branch) {
   case 129:
    is_matched = 1;
    is_skipped = 0;
    break;
   case 130:
    is_matched = is_skipped ? 0 : 1;
    break;
   case 128:
   case 131:
   default:
    pos_cond = p->cond;
    break;
   }
  } else if (p->cond.neg) {
   if (!is_skipped) {
    if (check_positive(rtwdev, pos_cond)) {
     is_matched = 1;
     is_skipped = 1;
    } else {
     is_matched = 0;
     is_skipped = 0;
    }
   } else {
    is_matched = 0;
   }
  } else if (is_matched) {
   (*tbl->do_cfg)(rtwdev, tbl, p->cfg.addr, p->cfg.data);
  }
 }
}
