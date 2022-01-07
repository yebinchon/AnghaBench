
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_priv {int dummy; } ;
struct btc_coexist {struct rtl_priv* adapter; } ;


 int COMP_BT_COEXIST ;
 int DBG_LOUD ;
 int NORMAL_EXEC ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int) ;
 int btc8821a1ant_low_penalty_ra (struct btc_coexist*,int ,int) ;

__attribute__((used)) static void btc8821a1ant_sw_mechanism(struct btc_coexist *btcoexist,
          bool low_penalty_ra)
{
 struct rtl_priv *rtlpriv = btcoexist->adapter;

 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
   "[BTCoex], SM[LpRA] = %d\n", low_penalty_ra);

 btc8821a1ant_low_penalty_ra(btcoexist, NORMAL_EXEC, low_penalty_ra);
}
