
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_2__ {int btdm_ant_num; } ;
struct btc_coexist {TYPE_1__ board_info; int adapter; } ;


 scalar_t__ IS_HARDWARE_TYPE_8192E (int ) ;
 scalar_t__ IS_HARDWARE_TYPE_8723B (int ) ;
 scalar_t__ IS_HARDWARE_TYPE_8821 (int ) ;
 int ex_btc8192e2ant_display_coex_info (struct btc_coexist*,struct seq_file*) ;
 int ex_btc8723b1ant_display_coex_info (struct btc_coexist*,struct seq_file*) ;
 int ex_btc8723b2ant_display_coex_info (struct btc_coexist*,struct seq_file*) ;
 int ex_btc8821a1ant_display_coex_info (struct btc_coexist*,struct seq_file*) ;
 int ex_btc8821a2ant_display_coex_info (struct btc_coexist*,struct seq_file*) ;
 int halbtc_is_bt_coexist_available (struct btc_coexist*) ;
 int halbtc_leave_low_power (struct btc_coexist*) ;
 int halbtc_normal_low_power (struct btc_coexist*) ;

void exhalbtc_display_bt_coex_info(struct btc_coexist *btcoexist,
       struct seq_file *m)
{
 if (!halbtc_is_bt_coexist_available(btcoexist))
  return;

 halbtc_leave_low_power(btcoexist);

 if (IS_HARDWARE_TYPE_8821(btcoexist->adapter)) {
  if (btcoexist->board_info.btdm_ant_num == 2)
   ex_btc8821a2ant_display_coex_info(btcoexist, m);
  else if (btcoexist->board_info.btdm_ant_num == 1)
   ex_btc8821a1ant_display_coex_info(btcoexist, m);
 } else if (IS_HARDWARE_TYPE_8723B(btcoexist->adapter)) {
  if (btcoexist->board_info.btdm_ant_num == 2)
   ex_btc8723b2ant_display_coex_info(btcoexist, m);
  else if (btcoexist->board_info.btdm_ant_num == 1)
   ex_btc8723b1ant_display_coex_info(btcoexist, m);
 } else if (IS_HARDWARE_TYPE_8192E(btcoexist->adapter)) {
  if (btcoexist->board_info.btdm_ant_num == 2)
   ex_btc8192e2ant_display_coex_info(btcoexist, m);
 }

 halbtc_normal_low_power(btcoexist);
}
