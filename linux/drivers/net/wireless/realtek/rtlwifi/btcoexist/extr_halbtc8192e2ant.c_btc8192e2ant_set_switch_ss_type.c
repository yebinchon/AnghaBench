
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct rtl_priv {int dummy; } ;
struct btc_coexist {int (* btc_set ) (struct btc_coexist*,int ,int*) ;int (* btc_write_1byte ) (struct btc_coexist*,int,int) ;int (* btc_write_1byte_bitmask ) (struct btc_coexist*,int,int,int) ;int (* btc_write_4byte ) (struct btc_coexist*,int,int) ;struct rtl_priv* adapter; } ;
struct TYPE_2__ {int cur_ra_mask_type; } ;


 int BTC_MIMO_PS_DYNAMIC ;
 int BTC_MIMO_PS_STATIC ;
 int BTC_SET_ACT_SEND_MIMO_PS ;
 int COMP_BT_COEXIST ;
 int DBG_LOUD ;
 int FORCE_EXEC ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int) ;
 int btc8192e2ant_decide_ra_mask (struct btc_coexist*,int,int ) ;
 int btc8192e2ant_ps_tdma (struct btc_coexist*,int ,int,int) ;
 int btc8192e2ant_update_ra_mask (struct btc_coexist*,int ,int) ;
 TYPE_1__* coex_dm ;
 int stub1 (struct btc_coexist*,int,int) ;
 int stub10 (struct btc_coexist*,int,int) ;
 int stub11 (struct btc_coexist*,int ,int*) ;
 int stub2 (struct btc_coexist*,int,int) ;
 int stub3 (struct btc_coexist*,int,int) ;
 int stub4 (struct btc_coexist*,int,int,int) ;
 int stub5 (struct btc_coexist*,int,int) ;
 int stub6 (struct btc_coexist*,int,int) ;
 int stub7 (struct btc_coexist*,int,int) ;
 int stub8 (struct btc_coexist*,int,int) ;
 int stub9 (struct btc_coexist*,int,int,int) ;

__attribute__((used)) static void btc8192e2ant_set_switch_ss_type(struct btc_coexist *btcoexist,
         u8 ss_type)
{
 struct rtl_priv *rtlpriv = btcoexist->adapter;
 u8 mimops = BTC_MIMO_PS_DYNAMIC;
 u32 dis_ra_mask = 0x0;

 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
   "[BTCoex], REAL set SS Type = %d\n", ss_type);

 dis_ra_mask = btc8192e2ant_decide_ra_mask(btcoexist, ss_type,
        coex_dm->cur_ra_mask_type);
 btc8192e2ant_update_ra_mask(btcoexist, FORCE_EXEC, dis_ra_mask);

 if (ss_type == 1) {
  btc8192e2ant_ps_tdma(btcoexist, FORCE_EXEC, 0, 1);

  btcoexist->btc_write_1byte(btcoexist, 0xc04, 0x11);
  btcoexist->btc_write_1byte(btcoexist, 0xd04, 0x1);
  btcoexist->btc_write_4byte(btcoexist, 0x90c, 0x81111111);

  btcoexist->btc_write_1byte_bitmask(btcoexist, 0xe77, 0x4, 0x1);
  btcoexist->btc_write_1byte(btcoexist, 0xa07, 0x81);
  mimops = BTC_MIMO_PS_STATIC;
 } else if (ss_type == 2) {
  btc8192e2ant_ps_tdma(btcoexist, FORCE_EXEC, 0, 0);
  btcoexist->btc_write_1byte(btcoexist, 0xc04, 0x33);
  btcoexist->btc_write_1byte(btcoexist, 0xd04, 0x3);
  btcoexist->btc_write_4byte(btcoexist, 0x90c, 0x81121313);
  btcoexist->btc_write_1byte_bitmask(btcoexist, 0xe77, 0x4, 0x0);
  btcoexist->btc_write_1byte(btcoexist, 0xa07, 0x41);
  mimops = BTC_MIMO_PS_DYNAMIC;
 }

 btcoexist->btc_set(btcoexist, BTC_SET_ACT_SEND_MIMO_PS, &mimops);
}
