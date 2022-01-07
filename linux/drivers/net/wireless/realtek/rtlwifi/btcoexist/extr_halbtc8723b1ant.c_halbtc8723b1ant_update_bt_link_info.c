
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btc_bt_link_info {int bt_link_exist; int pan_exist; int sco_only; int a2dp_only; int pan_only; int hid_only; scalar_t__ hid_exist; scalar_t__ a2dp_exist; scalar_t__ sco_exist; int bt_hi_pri_link_exist; } ;
struct btc_coexist {int (* btc_get ) (struct btc_coexist*,int ,int*) ;struct btc_bt_link_info bt_link_info; } ;
struct TYPE_2__ {int bt_link_exist; int pan_exist; int bt_hi_pri_link_exist; scalar_t__ hid_exist; scalar_t__ a2dp_exist; scalar_t__ sco_exist; } ;


 int BTC_GET_BL_HS_OPERATION ;
 TYPE_1__* coex_sta ;
 int stub1 (struct btc_coexist*,int ,int*) ;

__attribute__((used)) static void halbtc8723b1ant_update_bt_link_info(struct btc_coexist *btcoexist)
{
 struct btc_bt_link_info *bt_link_info = &btcoexist->bt_link_info;
 bool bt_hs_on = 0;

 btcoexist->btc_get(btcoexist, BTC_GET_BL_HS_OPERATION, &bt_hs_on);

 bt_link_info->bt_link_exist = coex_sta->bt_link_exist;
 bt_link_info->sco_exist = coex_sta->sco_exist;
 bt_link_info->a2dp_exist = coex_sta->a2dp_exist;
 bt_link_info->pan_exist = coex_sta->pan_exist;
 bt_link_info->hid_exist = coex_sta->hid_exist;
 bt_link_info->bt_hi_pri_link_exist = coex_sta->bt_hi_pri_link_exist;


 if (bt_hs_on) {
  bt_link_info->pan_exist = 1;
  bt_link_info->bt_link_exist = 1;
 }


 if (bt_link_info->sco_exist && !bt_link_info->a2dp_exist &&
     !bt_link_info->pan_exist && !bt_link_info->hid_exist)
  bt_link_info->sco_only = 1;
 else
  bt_link_info->sco_only = 0;


 if (!bt_link_info->sco_exist && bt_link_info->a2dp_exist &&
     !bt_link_info->pan_exist && !bt_link_info->hid_exist)
  bt_link_info->a2dp_only = 1;
 else
  bt_link_info->a2dp_only = 0;


 if (!bt_link_info->sco_exist && !bt_link_info->a2dp_exist &&
     bt_link_info->pan_exist && !bt_link_info->hid_exist)
  bt_link_info->pan_only = 1;
 else
  bt_link_info->pan_only = 0;


 if (!bt_link_info->sco_exist && !bt_link_info->a2dp_exist &&
     !bt_link_info->pan_exist && bt_link_info->hid_exist)
  bt_link_info->hid_only = 1;
 else
  bt_link_info->hid_only = 0;
}
