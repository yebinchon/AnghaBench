
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct rtl_priv {int dummy; } ;
struct btc_coexist {int (* btc_read_1byte ) (struct btc_coexist*,int) ;int (* btc_write_1byte_bitmask ) (struct btc_coexist*,int,int,int) ;int (* btc_write_1byte ) (struct btc_coexist*,int,int) ;int (* btc_get_rf_reg ) (struct btc_coexist*,int ,int,int) ;struct rtl_priv* adapter; } ;
struct TYPE_4__ {int bt_rf0x1e_backup; } ;
struct TYPE_3__ {scalar_t__ dis_ver_info_cnt; } ;


 int BTC_ANT_WIFI_AT_MAIN ;
 int BTC_RF_A ;
 int COMP_BT_COEXIST ;
 int DBG_LOUD ;
 int FORCE_EXEC ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 int btc8821a2ant_coex_table_with_type (struct btc_coexist*,int ,int ) ;
 int btc8821a2ant_set_ant_path (struct btc_coexist*,int ,int,int) ;
 TYPE_2__* coex_dm ;
 TYPE_1__* coex_sta ;
 int stub1 (struct btc_coexist*,int ,int,int) ;
 int stub2 (struct btc_coexist*,int) ;
 int stub3 (struct btc_coexist*,int,int) ;
 int stub4 (struct btc_coexist*,int,int) ;
 int stub5 (struct btc_coexist*,int,int) ;
 int stub6 (struct btc_coexist*,int,int,int) ;

void ex_btc8821a2ant_init_hwconfig(struct btc_coexist *btcoexist)
{
 struct rtl_priv *rtlpriv = btcoexist->adapter;
 u8 u1tmp = 0;

 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
   "[BTCoex], 2Ant Init HW Config!!\n");


 coex_dm->bt_rf0x1e_backup =
  btcoexist->btc_get_rf_reg(btcoexist, BTC_RF_A, 0x1e, 0xfffff);


 u1tmp = btcoexist->btc_read_1byte(btcoexist, 0x790);
 u1tmp &= 0xc0;
 u1tmp |= 0x5;
 btcoexist->btc_write_1byte(btcoexist, 0x790, u1tmp);


 btc8821a2ant_set_ant_path(btcoexist, BTC_ANT_WIFI_AT_MAIN, 1, 0);
 coex_sta->dis_ver_info_cnt = 0;


 btc8821a2ant_coex_table_with_type(btcoexist, FORCE_EXEC, 0);



 btcoexist->btc_write_1byte(btcoexist, 0x76e, 0x4);
 btcoexist->btc_write_1byte(btcoexist, 0x778, 0x3);
 btcoexist->btc_write_1byte_bitmask(btcoexist, 0x40, 0x20, 0x1);
}
