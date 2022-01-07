
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btc_coexist {int dummy; } ;
struct TYPE_2__ {int cur_bt_auto_report; int pre_bt_auto_report; } ;


 TYPE_1__* coex_dm ;
 int halbtc8723b1ant_set_bt_auto_report (struct btc_coexist*,int) ;

__attribute__((used)) static void halbtc8723b1ant_bt_auto_report(struct btc_coexist *btcoexist,
        bool force_exec,
        bool enable_auto_report)
{
 coex_dm->cur_bt_auto_report = enable_auto_report;

 if (!force_exec) {
  if (coex_dm->pre_bt_auto_report == coex_dm->cur_bt_auto_report)
   return;
 }
 halbtc8723b1ant_set_bt_auto_report(btcoexist,
        coex_dm->cur_bt_auto_report);

 coex_dm->pre_bt_auto_report = coex_dm->cur_bt_auto_report;
}
