
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef void* u32 ;
struct rtl_priv {int dummy; } ;
struct btc_coexist {struct rtl_priv* adapter; } ;
struct TYPE_2__ {scalar_t__ cur_val0x6c0; scalar_t__ cur_val0x6c4; scalar_t__ cur_val0x6c8; scalar_t__ cur_val0x6cc; scalar_t__ pre_val0x6c0; scalar_t__ pre_val0x6c4; scalar_t__ pre_val0x6c8; scalar_t__ pre_val0x6cc; } ;


 int COMP_BT_COEXIST ;
 int DBG_LOUD ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,char*,void*,void*,scalar_t__) ;
 TYPE_1__* coex_dm ;
 int halbtc8723b1ant_set_coex_table (struct btc_coexist*,void*,void*,void*,scalar_t__) ;

__attribute__((used)) static void halbtc8723b1ant_coex_table(struct btc_coexist *btcoexist,
           bool force_exec, u32 val0x6c0,
           u32 val0x6c4, u32 val0x6c8,
           u8 val0x6cc)
{
 struct rtl_priv *rtlpriv = btcoexist->adapter;

 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
   "[BTCoex], %s write Coex Table 0x6c0 = 0x%x, 0x6c4 = 0x%x, 0x6cc = 0x%x\n",
   (force_exec ? "force to" : ""),
   val0x6c0, val0x6c4, val0x6cc);
 coex_dm->cur_val0x6c0 = val0x6c0;
 coex_dm->cur_val0x6c4 = val0x6c4;
 coex_dm->cur_val0x6c8 = val0x6c8;
 coex_dm->cur_val0x6cc = val0x6cc;

 if (!force_exec) {
  if ((coex_dm->pre_val0x6c0 == coex_dm->cur_val0x6c0) &&
      (coex_dm->pre_val0x6c4 == coex_dm->cur_val0x6c4) &&
      (coex_dm->pre_val0x6c8 == coex_dm->cur_val0x6c8) &&
      (coex_dm->pre_val0x6cc == coex_dm->cur_val0x6cc))
   return;
 }
 halbtc8723b1ant_set_coex_table(btcoexist, val0x6c0, val0x6c4,
           val0x6c8, val0x6cc);

 coex_dm->pre_val0x6c0 = coex_dm->cur_val0x6c0;
 coex_dm->pre_val0x6c4 = coex_dm->cur_val0x6c4;
 coex_dm->pre_val0x6c8 = coex_dm->cur_val0x6c8;
 coex_dm->pre_val0x6cc = coex_dm->cur_val0x6cc;
}
