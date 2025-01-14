
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
struct rtl_priv {int dummy; } ;
struct btc_coexist {struct rtl_priv* adapter; } ;
struct TYPE_2__ {void* cur_rpwm; void* pre_rpwm; void* cur_lps; void* pre_lps; } ;


 int COMP_BT_COEXIST ;
 int DBG_LOUD ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,char*,void*,...) ;
 int btc8821a1ant_set_lps_rpwm (struct btc_coexist*,void*,void*) ;
 TYPE_1__* coex_dm ;

__attribute__((used)) static void btc8821a1ant_lps_rpwm(struct btc_coexist *btcoexist,
      bool force_exec, u8 lps_val, u8 rpwm_val)
{
 struct rtl_priv *rtlpriv = btcoexist->adapter;

 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
   "[BTCoex], %s set lps/rpwm = 0x%x/0x%x\n",
   (force_exec ? "force to" : ""), lps_val, rpwm_val);
 coex_dm->cur_lps = lps_val;
 coex_dm->cur_rpwm = rpwm_val;

 if (!force_exec) {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], LPS-RxBeaconMode = 0x%x, LPS-RPWM = 0x%x!!\n",
    coex_dm->cur_lps, coex_dm->cur_rpwm);

  if ((coex_dm->pre_lps == coex_dm->cur_lps) &&
      (coex_dm->pre_rpwm == coex_dm->cur_rpwm)) {
   RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
     "[BTCoex], LPS-RPWM_Last = 0x%x, LPS-RPWM_Now = 0x%x!!\n",
     coex_dm->pre_rpwm, coex_dm->cur_rpwm);

   return;
  }
 }
 btc8821a1ant_set_lps_rpwm(btcoexist, lps_val, rpwm_val);

 coex_dm->pre_lps = coex_dm->cur_lps;
 coex_dm->pre_rpwm = coex_dm->cur_rpwm;
}
