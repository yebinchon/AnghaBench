
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct rtl_priv {int dummy; } ;
struct btc_stack_info {int hci_version; scalar_t__ profile_notified; } ;
struct btc_board_info {int btdm_ant_pos; int btdm_ant_num; int pg_ant_num; } ;
struct btc_coexist {int auto_report_2ant; int (* btc_get ) (struct btc_coexist*,int ,int *) ;struct btc_stack_info stack_info; struct btc_board_info board_info; struct rtl_priv* adapter; } ;
struct TYPE_2__ {scalar_t__ auto_tdma_adjust; } ;


 int BTC_GET_U4_BT_PATCH_VER ;
 int BTC_GET_U4_WIFI_FW_VER ;
 int COMP_BT_COEXIST ;
 int DBG_LOUD ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,...) ;
 scalar_t__ btc8192e2ant_is_wifi_status_changed (struct btc_coexist*) ;
 int btc8192e2ant_monitor_bt_ctr (struct btc_coexist*) ;
 int btc8192e2ant_monitor_bt_enable_disable (struct btc_coexist*) ;
 int btc8192e2ant_query_bt_info (struct btc_coexist*) ;
 int btc8192e2ant_run_coexist_mechanism (struct btc_coexist*) ;
 TYPE_1__* coex_dm ;
 int glcoex_ver_8192e_2ant ;
 int glcoex_ver_date_8192e_2ant ;
 int stub1 (struct btc_coexist*,int ,int *) ;
 int stub2 (struct btc_coexist*,int ,int *) ;

void ex_btc8192e2ant_periodical(struct btc_coexist *btcoexist)
{
 struct rtl_priv *rtlpriv = btcoexist->adapter;
 static u8 dis_ver_info_cnt;
 u32 fw_ver = 0, bt_patch_ver = 0;
 struct btc_board_info *board_info = &btcoexist->board_info;
 struct btc_stack_info *stack_info = &btcoexist->stack_info;

 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
   "=======================Periodical=======================\n");
 if (dis_ver_info_cnt <= 5) {
  dis_ver_info_cnt += 1;
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "************************************************\n");
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "Ant PG Num/ Ant Mech/ Ant Pos = %d/ %d/ %d\n",
    board_info->pg_ant_num, board_info->btdm_ant_num,
    board_info->btdm_ant_pos);
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "BT stack/ hci ext ver = %s / %d\n",
    ((stack_info->profile_notified) ? "Yes" : "No"),
    stack_info->hci_version);
  btcoexist->btc_get(btcoexist, BTC_GET_U4_BT_PATCH_VER,
       &bt_patch_ver);
  btcoexist->btc_get(btcoexist, BTC_GET_U4_WIFI_FW_VER, &fw_ver);
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "CoexVer/ FwVer/ PatchVer = %d_%x/ 0x%x/ 0x%x(%d)\n",
    glcoex_ver_date_8192e_2ant, glcoex_ver_8192e_2ant,
    fw_ver, bt_patch_ver, bt_patch_ver);
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "************************************************\n");
 }

 if (!btcoexist->auto_report_2ant) {
  btc8192e2ant_query_bt_info(btcoexist);
  btc8192e2ant_monitor_bt_ctr(btcoexist);
  btc8192e2ant_monitor_bt_enable_disable(btcoexist);
 } else {
  if (btc8192e2ant_is_wifi_status_changed(btcoexist) ||
      coex_dm->auto_tdma_adjust)
   btc8192e2ant_run_coexist_mechanism(btcoexist);
 }
}
