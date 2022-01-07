
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rtl_priv {int dummy; } ;
struct btc_coexist {struct rtl_priv* adapter; } ;
struct TYPE_2__ {int cur_algorithm; int pre_algorithm; } ;
 int COMP_BT_COEXIST ;
 int DBG_LOUD ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 int btc8821a1ant_action_a2dp (struct btc_coexist*) ;
 int btc8821a1ant_action_a2dp_pan_hs (struct btc_coexist*) ;
 int btc8821a1ant_action_algorithm (struct btc_coexist*) ;
 int btc8821a1ant_action_hid (struct btc_coexist*) ;
 int btc8821a1ant_action_hid_a2dp (struct btc_coexist*) ;
 int btc8821a1ant_action_hid_a2dp_pan_edr (struct btc_coexist*) ;
 int btc8821a1ant_action_pan_edr (struct btc_coexist*) ;
 int btc8821a1ant_action_pan_edr_a2dp (struct btc_coexist*) ;
 int btc8821a1ant_action_pan_edr_hid (struct btc_coexist*) ;
 int btc8821a1ant_action_pan_hs (struct btc_coexist*) ;
 int btc8821a1ant_action_sco (struct btc_coexist*) ;
 int btc8821a1ant_is_common_action (struct btc_coexist*) ;
 TYPE_1__* coex_dm ;

__attribute__((used)) static void btc8821a1ant_run_sw_coex_mech(struct btc_coexist *btcoexist)
{
 struct rtl_priv *rtlpriv = btcoexist->adapter;
 u8 algorithm = 0;

 algorithm = btc8821a1ant_action_algorithm(btcoexist);
 coex_dm->cur_algorithm = algorithm;

 if (!btc8821a1ant_is_common_action(btcoexist)) {
  switch (coex_dm->cur_algorithm) {
  case 128:
   RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
     "[BTCoex], Action algorithm = SCO\n");
   btc8821a1ant_action_sco(btcoexist);
   break;
  case 135:
   RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
     "[BTCoex], Action algorithm = HID\n");
   btc8821a1ant_action_hid(btcoexist);
   break;
  case 137:
   RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
     "[BTCoex], Action algorithm = A2DP\n");
   btc8821a1ant_action_a2dp(btcoexist);
   break;
  case 136:
   RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
     "[BTCoex], Action algorithm = A2DP+PAN(HS)\n");
   btc8821a1ant_action_a2dp_pan_hs(btcoexist);
   break;
  case 132:
   RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
     "[BTCoex], Action algorithm = PAN(EDR)\n");
   btc8821a1ant_action_pan_edr(btcoexist);
   break;
  case 129:
   RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
     "[BTCoex], Action algorithm = HS mode\n");
   btc8821a1ant_action_pan_hs(btcoexist);
   break;
  case 131:
   RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
     "[BTCoex], Action algorithm = PAN+A2DP\n");
   btc8821a1ant_action_pan_edr_a2dp(btcoexist);
   break;
  case 130:
   RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
     "[BTCoex], Action algorithm = PAN(EDR)+HID\n");
   btc8821a1ant_action_pan_edr_hid(btcoexist);
   break;
  case 133:
   RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
     "[BTCoex], Action algorithm = HID+A2DP+PAN\n");
   btc8821a1ant_action_hid_a2dp_pan_edr(btcoexist);
   break;
  case 134:
   RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
     "[BTCoex], Action algorithm = HID+A2DP\n");
   btc8821a1ant_action_hid_a2dp(btcoexist);
   break;
  default:
   RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
     "[BTCoex], Action algorithm = coexist All Off!!\n");

   break;
  }
  coex_dm->pre_algorithm = coex_dm->cur_algorithm;
 }
}
