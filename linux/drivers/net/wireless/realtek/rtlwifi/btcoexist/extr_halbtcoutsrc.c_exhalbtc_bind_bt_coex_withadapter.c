
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {int interface; } ;
struct rtl_priv {TYPE_1__ rtlhal; } ;
struct TYPE_10__ {int tfbga_package; scalar_t__ ant_div_cfg; int rfe_type; int btdm_ant_pos; } ;
struct TYPE_9__ {int bt_ctrl_agg_buf_size; int agg_buf_size; int increase_scan_dev_num; int miracast_plus_bt; } ;
struct TYPE_8__ {int profile_notified; } ;
struct TYPE_7__ {int cnt_bind; } ;
struct btc_coexist {int binded; TYPE_5__ board_info; TYPE_4__ bt_info; TYPE_3__ stack_info; void* adapter; TYPE_2__ statistics; int chip_interface; } ;


 int BTC_ANTENNA_AT_MAIN_PORT ;
 int BTC_INTF_PCI ;
 int BTC_INTF_UNKNOWN ;
 int BTC_INTF_USB ;
 int BT_COEX_ANT_TYPE_PG ;
 int COMP_BT_COEXIST ;
 int DBG_LOUD ;


 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 int exhalbtc_set_ant_num (struct rtl_priv*,int ,int) ;
 int exhalbtc_set_chip_type (struct btc_coexist*,int) ;
 int exhalbtc_set_single_ant_path (struct btc_coexist*,int) ;
 struct btc_coexist* rtl_btc_coexist (struct rtl_priv*) ;
 int rtl_get_hwpg_ant_num (struct rtl_priv*) ;
 int rtl_get_hwpg_bt_type (struct rtl_priv*) ;
 int rtl_get_hwpg_package_type (struct rtl_priv*) ;
 int rtl_get_hwpg_rfe_type (struct rtl_priv*) ;
 int rtl_get_hwpg_single_ant_path (struct rtl_priv*) ;

bool exhalbtc_bind_bt_coex_withadapter(void *adapter)
{
 struct rtl_priv *rtlpriv = adapter;
 struct btc_coexist *btcoexist = rtl_btc_coexist(rtlpriv);
 u8 ant_num = 2, chip_type, single_ant_path = 0;

 if (!btcoexist)
  return 0;

 if (btcoexist->binded)
  return 0;

 switch (rtlpriv->rtlhal.interface) {
 case 129:
  btcoexist->chip_interface = BTC_INTF_PCI;
  break;
 case 128:
  btcoexist->chip_interface = BTC_INTF_USB;
  break;
 default:
  btcoexist->chip_interface = BTC_INTF_UNKNOWN;
  break;
 }

 btcoexist->binded = 1;
 btcoexist->statistics.cnt_bind++;

 btcoexist->adapter = adapter;

 btcoexist->stack_info.profile_notified = 0;

 btcoexist->bt_info.bt_ctrl_agg_buf_size = 0;
 btcoexist->bt_info.agg_buf_size = 5;

 btcoexist->bt_info.increase_scan_dev_num = 0;
 btcoexist->bt_info.miracast_plus_bt = 0;

 chip_type = rtl_get_hwpg_bt_type(rtlpriv);
 exhalbtc_set_chip_type(btcoexist, chip_type);
 ant_num = rtl_get_hwpg_ant_num(rtlpriv);
 exhalbtc_set_ant_num(rtlpriv, BT_COEX_ANT_TYPE_PG, ant_num);


 btcoexist->board_info.btdm_ant_pos = BTC_ANTENNA_AT_MAIN_PORT;

 single_ant_path = rtl_get_hwpg_single_ant_path(rtlpriv);
 exhalbtc_set_single_ant_path(btcoexist, single_ant_path);

 if (rtl_get_hwpg_package_type(rtlpriv) == 0)
  btcoexist->board_info.tfbga_package = 0;
 else if (rtl_get_hwpg_package_type(rtlpriv) == 1)
  btcoexist->board_info.tfbga_package = 0;
 else
  btcoexist->board_info.tfbga_package = 1;

 if (btcoexist->board_info.tfbga_package)
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], Package Type = TFBGA\n");
 else
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], Package Type = Non-TFBGA\n");

 btcoexist->board_info.rfe_type = rtl_get_hwpg_rfe_type(rtlpriv);
 btcoexist->board_info.ant_div_cfg = 0;

 return 1;
}
