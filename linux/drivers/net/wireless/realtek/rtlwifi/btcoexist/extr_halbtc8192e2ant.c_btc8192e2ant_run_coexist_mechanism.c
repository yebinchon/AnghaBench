
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct rtl_priv {int dummy; } ;
struct btc_coexist {scalar_t__ manual_control; struct rtl_priv* adapter; } ;
struct TYPE_4__ {int cur_algorithm; int auto_tdma_adjust; int pre_algorithm; } ;
struct TYPE_3__ {scalar_t__ c2h_bt_inquiry_page; scalar_t__ under_ips; } ;
 int COMP_BT_COEXIST ;
 int DBG_LOUD ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,...) ;
 int btc8192e2ant_action_a2dp (struct btc_coexist*) ;
 int btc8192e2ant_action_a2dp_pan_hs (struct btc_coexist*) ;
 scalar_t__ btc8192e2ant_action_algorithm (struct btc_coexist*) ;
 int btc8192e2ant_action_bt_inquiry (struct btc_coexist*) ;
 int btc8192e2ant_action_hid (struct btc_coexist*) ;
 int btc8192e2ant_action_hid_a2dp (struct btc_coexist*) ;
 int btc8192e2ant_action_hid_a2dp_pan_edr (struct btc_coexist*) ;
 int btc8192e2ant_action_pan_edr (struct btc_coexist*) ;
 int btc8192e2ant_action_pan_edr_a2dp (struct btc_coexist*) ;
 int btc8192e2ant_action_pan_edr_hid (struct btc_coexist*) ;
 int btc8192e2ant_action_pan_hs (struct btc_coexist*) ;
 int btc8192e2ant_action_sco (struct btc_coexist*) ;
 int btc8192e2ant_action_sco_pan (struct btc_coexist*) ;
 scalar_t__ btc8192e2ant_is_common_action (struct btc_coexist*) ;
 TYPE_2__* coex_dm ;
 TYPE_1__* coex_sta ;

__attribute__((used)) static void btc8192e2ant_run_coexist_mechanism(struct btc_coexist *btcoexist)
{
 struct rtl_priv *rtlpriv = btcoexist->adapter;
 u8 algorithm = 0;

 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
   "[BTCoex], RunCoexistMechanism()===>\n");

 if (btcoexist->manual_control) {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], return for Manual CTRL <===\n");
  return;
 }

 if (coex_sta->under_ips) {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], wifi is under IPS !!!\n");
  return;
 }

 algorithm = btc8192e2ant_action_algorithm(btcoexist);
 if (coex_sta->c2h_bt_inquiry_page &&
     (130 != algorithm)) {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], BT is under inquiry/page scan !!\n");
  btc8192e2ant_action_bt_inquiry(btcoexist);
  return;
 }

 coex_dm->cur_algorithm = algorithm;
 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
   "[BTCoex], Algorithm = %d\n", coex_dm->cur_algorithm);

 if (btc8192e2ant_is_common_action(btcoexist)) {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], Action 2-Ant common\n");
  coex_dm->auto_tdma_adjust = 0;
 } else {
  if (coex_dm->cur_algorithm != coex_dm->pre_algorithm) {
   RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
     "[BTCoex] preAlgorithm=%d, curAlgorithm=%d\n",
     coex_dm->pre_algorithm,
     coex_dm->cur_algorithm);
   coex_dm->auto_tdma_adjust = 0;
  }
  switch (coex_dm->cur_algorithm) {
  case 129:
   RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
     "Action 2-Ant, algorithm = SCO\n");
   btc8192e2ant_action_sco(btcoexist);
   break;
  case 128:
   RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
     "Action 2-Ant, algorithm = SCO+PAN(EDR)\n");
   btc8192e2ant_action_sco_pan(btcoexist);
   break;
  case 136:
   RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
     "Action 2-Ant, algorithm = HID\n");
   btc8192e2ant_action_hid(btcoexist);
   break;
  case 138:
   RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
     "Action 2-Ant, algorithm = A2DP\n");
   btc8192e2ant_action_a2dp(btcoexist);
   break;
  case 137:
   RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
     "Action 2-Ant, algorithm = A2DP+PAN(HS)\n");
   btc8192e2ant_action_a2dp_pan_hs(btcoexist);
   break;
  case 133:
   RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
     "Action 2-Ant, algorithm = PAN(EDR)\n");
   btc8192e2ant_action_pan_edr(btcoexist);
   break;
  case 130:
   RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
     "Action 2-Ant, algorithm = HS mode\n");
   btc8192e2ant_action_pan_hs(btcoexist);
   break;
  case 132:
   RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
     "Action 2-Ant, algorithm = PAN+A2DP\n");
   btc8192e2ant_action_pan_edr_a2dp(btcoexist);
   break;
  case 131:
   RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
     "Action 2-Ant, algorithm = PAN(EDR)+HID\n");
   btc8192e2ant_action_pan_edr_hid(btcoexist);
   break;
  case 134:
   RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
     "Action 2-Ant, algorithm = HID+A2DP+PAN\n");
   btc8192e2ant_action_hid_a2dp_pan_edr(btcoexist);
   break;
  case 135:
   RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
     "Action 2-Ant, algorithm = HID+A2DP\n");
   btc8192e2ant_action_hid_a2dp(btcoexist);
   break;
  default:
   RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
     "Action 2-Ant, algorithm = unknown!!\n");

   break;
  }
  coex_dm->pre_algorithm = coex_dm->cur_algorithm;
 }
}
