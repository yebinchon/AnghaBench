
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_coex_stat {scalar_t__ bt_hid_pair_num; scalar_t__ bt_hfp_exist; scalar_t__ bt_hid_exist; } ;
struct rtw_coex_dm {scalar_t__ bt_status; } ;
struct rtw_coex {scalar_t__ under_5g; struct rtw_coex_stat stat; struct rtw_coex_dm dm; } ;
struct rtw_dev {struct rtw_coex coex; } ;


 scalar_t__ COEX_BTSTATUS_NCON_IDLE ;
 int rtw_coex_limited_tx (struct rtw_dev*,int,int) ;

__attribute__((used)) static void rtw_coex_limited_wl(struct rtw_dev *rtwdev)
{
 struct rtw_coex *coex = &rtwdev->coex;
 struct rtw_coex_dm *coex_dm = &coex->dm;
 struct rtw_coex_stat *coex_stat = &coex->stat;
 bool tx_limit = 0;
 bool tx_agg_ctrl = 0;

 if (coex->under_5g ||
     coex_dm->bt_status == COEX_BTSTATUS_NCON_IDLE) {

 } else {
  tx_limit = 1;
  if (coex_stat->bt_hid_exist || coex_stat->bt_hfp_exist ||
      coex_stat->bt_hid_pair_num > 0)
   tx_agg_ctrl = 1;
 }

 rtw_coex_limited_tx(rtwdev, tx_limit, tx_agg_ctrl);
}
