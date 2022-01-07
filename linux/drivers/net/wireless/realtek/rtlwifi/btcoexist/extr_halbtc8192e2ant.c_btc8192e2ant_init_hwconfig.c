
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct rtl_priv {int dummy; } ;
struct btc_coexist {int (* btc_read_1byte ) (struct btc_coexist*,int) ;scalar_t__ chip_interface; int (* btc_write_1byte ) (struct btc_coexist*,int,int) ;int (* btc_write_2byte ) (struct btc_coexist*,int,int ) ;int (* btc_read_2byte ) (struct btc_coexist*,int) ;int (* btc_write_4byte ) (struct btc_coexist*,int,int) ;int (* btc_read_4byte ) (struct btc_coexist*,int) ;int (* btc_get_rf_reg ) (struct btc_coexist*,int ,int,int) ;struct rtl_priv* adapter; } ;
struct TYPE_2__ {int backup_ampdu_maxtime; int backup_retry_limit; int backup_arfr_cnt2; int backup_arfr_cnt1; int bt_rf0x1e_backup; } ;


 int BIT0 ;
 int BIT4 ;
 int BIT9 ;
 scalar_t__ BTC_INTF_USB ;
 int BTC_RF_A ;
 int COMP_BT_COEXIST ;
 int DBG_LOUD ;
 int FORCE_EXEC ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 int btc8192e2ant_coex_table_with_type (struct btc_coexist*,int ,int ) ;
 TYPE_1__* coex_dm ;
 int stub1 (struct btc_coexist*,int ,int,int) ;
 int stub10 (struct btc_coexist*,int,int) ;
 int stub11 (struct btc_coexist*,int,int) ;
 int stub12 (struct btc_coexist*,int,int) ;
 int stub13 (struct btc_coexist*,int,int) ;
 int stub14 (struct btc_coexist*,int) ;
 int stub15 (struct btc_coexist*,int,int) ;
 int stub16 (struct btc_coexist*,int,int) ;
 int stub17 (struct btc_coexist*,int,int) ;
 int stub18 (struct btc_coexist*,int) ;
 int stub19 (struct btc_coexist*,int,int ) ;
 int stub2 (struct btc_coexist*,int) ;
 int stub20 (struct btc_coexist*,int) ;
 int stub21 (struct btc_coexist*,int,int) ;
 int stub22 (struct btc_coexist*,int) ;
 int stub23 (struct btc_coexist*,int,int) ;
 int stub24 (struct btc_coexist*,int) ;
 int stub25 (struct btc_coexist*,int,int) ;
 int stub3 (struct btc_coexist*,int) ;
 int stub4 (struct btc_coexist*,int) ;
 int stub5 (struct btc_coexist*,int) ;
 int stub6 (struct btc_coexist*,int,int) ;
 int stub7 (struct btc_coexist*,int,int) ;
 int stub8 (struct btc_coexist*,int,int) ;
 int stub9 (struct btc_coexist*,int,int) ;

__attribute__((used)) static void btc8192e2ant_init_hwconfig(struct btc_coexist *btcoexist,
           bool backup)
{
 struct rtl_priv *rtlpriv = btcoexist->adapter;
 u16 u16tmp = 0;
 u8 u8tmp = 0;

 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
   "[BTCoex], 2Ant Init HW Config!!\n");

 if (backup) {

  coex_dm->bt_rf0x1e_backup =
   btcoexist->btc_get_rf_reg(btcoexist, BTC_RF_A,
        0x1e, 0xfffff);

  coex_dm->backup_arfr_cnt1 = btcoexist->btc_read_4byte(btcoexist,
              0x430);
  coex_dm->backup_arfr_cnt2 = btcoexist->btc_read_4byte(btcoexist,
             0x434);
  coex_dm->backup_retry_limit = btcoexist->btc_read_2byte(
            btcoexist,
            0x42a);
  coex_dm->backup_ampdu_maxtime = btcoexist->btc_read_1byte(
            btcoexist,
            0x456);
 }


 btcoexist->btc_write_1byte(btcoexist, 0x4f, 0x6);
 btcoexist->btc_write_1byte(btcoexist, 0x944, 0x24);
 btcoexist->btc_write_4byte(btcoexist, 0x930, 0x700700);
 btcoexist->btc_write_1byte(btcoexist, 0x92c, 0x20);
 if (btcoexist->chip_interface == BTC_INTF_USB)
  btcoexist->btc_write_4byte(btcoexist, 0x64, 0x30430004);
 else
  btcoexist->btc_write_4byte(btcoexist, 0x64, 0x30030004);

 btc8192e2ant_coex_table_with_type(btcoexist, FORCE_EXEC, 0);


 btcoexist->btc_write_4byte(btcoexist, 0x858, 0x55555555);


 btcoexist->btc_write_1byte(btcoexist, 0x778, 0x3);

 u8tmp = btcoexist->btc_read_1byte(btcoexist, 0x790);
 u8tmp &= 0xc0;
 u8tmp |= 0x5;
 btcoexist->btc_write_1byte(btcoexist, 0x790, u8tmp);


 btcoexist->btc_write_1byte(btcoexist, 0x76e, 0x4);


 btcoexist->btc_write_1byte(btcoexist, 0x40, 0x20);

 u16tmp = btcoexist->btc_read_2byte(btcoexist, 0x40);
 u16tmp |= BIT9;
 btcoexist->btc_write_2byte(btcoexist, 0x40, u16tmp);


 u8tmp = btcoexist->btc_read_1byte(btcoexist, 0x101);
 u8tmp |= BIT4;
 btcoexist->btc_write_1byte(btcoexist, 0x101, u8tmp);


 u8tmp = btcoexist->btc_read_1byte(btcoexist, 0x93);
 u8tmp |= BIT0;
 btcoexist->btc_write_1byte(btcoexist, 0x93, u8tmp);

 u8tmp = btcoexist->btc_read_1byte(btcoexist, 0x7);
 u8tmp |= BIT0;
 btcoexist->btc_write_1byte(btcoexist, 0x7, u8tmp);
}
