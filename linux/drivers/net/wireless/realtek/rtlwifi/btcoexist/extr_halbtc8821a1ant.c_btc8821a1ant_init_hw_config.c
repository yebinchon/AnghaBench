
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rtl_priv {int dummy; } ;
struct btc_coexist {int (* btc_read_1byte ) (struct btc_coexist*,int) ;int (* btc_write_1byte_bitmask ) (struct btc_coexist*,int,int,int) ;int (* btc_write_1byte ) (struct btc_coexist*,int,int) ;int (* btc_get ) (struct btc_coexist*,int ,int*) ;int (* btc_read_2byte ) (struct btc_coexist*,int) ;int (* btc_read_4byte ) (struct btc_coexist*,int) ;struct rtl_priv* adapter; } ;
struct TYPE_2__ {int backup_ampdu_max_time; int backup_retry_limit; int backup_arfr_cnt2; int backup_arfr_cnt1; } ;


 int BTC_ANT_PATH_BT ;
 int BTC_ANT_PATH_PTA ;
 int BTC_GET_BL_WIFI_UNDER_5G ;
 int COMP_BT_COEXIST ;
 int DBG_LOUD ;
 int FORCE_EXEC ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 int btc8821a1ant_coex_table_with_type (struct btc_coexist*,int ,int ) ;
 int btc8821a1ant_set_ant_path (struct btc_coexist*,int ,int,int) ;
 TYPE_1__* coex_dm ;
 int stub1 (struct btc_coexist*,int) ;
 int stub10 (struct btc_coexist*,int,int,int) ;
 int stub2 (struct btc_coexist*,int) ;
 int stub3 (struct btc_coexist*,int) ;
 int stub4 (struct btc_coexist*,int) ;
 int stub5 (struct btc_coexist*,int) ;
 int stub6 (struct btc_coexist*,int,int) ;
 int stub7 (struct btc_coexist*,int ,int*) ;
 int stub8 (struct btc_coexist*,int,int) ;
 int stub9 (struct btc_coexist*,int,int) ;

__attribute__((used)) static void btc8821a1ant_init_hw_config(struct btc_coexist *btcoexist,
     bool back_up, bool wifi_only)
{
 struct rtl_priv *rtlpriv = btcoexist->adapter;
 u8 u1_tmp = 0;
 bool wifi_under_5g = 0;

 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
   "[BTCoex], 1Ant Init HW Config!!\n");

 if (wifi_only)
  return;

 if (back_up) {
  coex_dm->backup_arfr_cnt1 = btcoexist->btc_read_4byte(btcoexist,
              0x430);
  coex_dm->backup_arfr_cnt2 = btcoexist->btc_read_4byte(btcoexist,
              0x434);
  coex_dm->backup_retry_limit =
   btcoexist->btc_read_2byte(btcoexist, 0x42a);
  coex_dm->backup_ampdu_max_time =
   btcoexist->btc_read_1byte(btcoexist, 0x456);
 }


 u1_tmp = btcoexist->btc_read_1byte(btcoexist, 0x790);
 u1_tmp &= 0xc0;
 u1_tmp |= 0x5;
 btcoexist->btc_write_1byte(btcoexist, 0x790, u1_tmp);

 btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_UNDER_5G, &wifi_under_5g);


 if (wifi_under_5g)
  btc8821a1ant_set_ant_path(btcoexist, BTC_ANT_PATH_BT,
       1, 0);
 else
  btc8821a1ant_set_ant_path(btcoexist, BTC_ANT_PATH_PTA,
       1, 0);

 btc8821a1ant_coex_table_with_type(btcoexist, FORCE_EXEC, 0);




 btcoexist->btc_write_1byte(btcoexist, 0x76e, 0xc);
 btcoexist->btc_write_1byte(btcoexist, 0x778, 0x3);
 btcoexist->btc_write_1byte_bitmask(btcoexist, 0x40, 0x20, 0x1);
}
