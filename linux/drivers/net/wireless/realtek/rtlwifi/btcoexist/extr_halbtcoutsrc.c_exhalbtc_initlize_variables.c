
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtl_priv {int dummy; } ;
struct TYPE_2__ {int bt_ctrl_buf_size; int agg_buf_size; int increase_scan_dev_num; } ;
struct btc_coexist {int bt_mp_comp; int btc_get_bt_afh_map_from_bt; int btc_get_ble_scan_para_from_bt; int btc_get_ble_scan_type_from_bt; int btc_get_ant_det_val_from_bt; int btc_phydm_query_phy_counter; int btc_phydm_modify_ra_pcr_threshold; int btc_get_bt_phydm_version; int btc_get_bt_coex_supported_version; int btc_get_bt_coex_supported_feature; TYPE_1__ bt_info; int btc_get_bt_reg; int btc_set_bt_reg; int btc_set; int btc_get; int btc_disp_dbg_msg; int btc_fill_h2c; int btc_get_rf_reg; int btc_set_rf_reg; int btc_get_bb_reg; int btc_set_bb_reg; int btc_write_local_reg_1byte; int btc_write_4byte; int btc_read_4byte; int btc_write_2byte; int btc_read_2byte; int btc_write_1byte_bitmask; int btc_write_1byte; int btc_read_1byte; } ;


 int halbtc_bitmask_write_1byte ;
 int halbtc_dbg_init () ;
 int halbtc_display_dbg_msg ;
 int halbtc_fill_h2c_cmd ;
 int halbtc_get ;
 int halbtc_get_ant_det_val_from_bt ;
 int halbtc_get_bbreg ;
 int halbtc_get_ble_scan_para_from_bt ;
 int halbtc_get_ble_scan_type_from_bt ;
 int halbtc_get_bt_afh_map_from_bt ;
 int halbtc_get_bt_coex_supported_feature ;
 int halbtc_get_bt_coex_supported_version ;
 int halbtc_get_bt_reg ;
 int halbtc_get_phydm_version ;
 int halbtc_get_rfreg ;
 int halbtc_phydm_modify_ra_pcr_threshold ;
 int halbtc_phydm_query_phy_counter ;
 int halbtc_read_1byte ;
 int halbtc_read_2byte ;
 int halbtc_read_4byte ;
 int halbtc_set ;
 int halbtc_set_bbreg ;
 int halbtc_set_bt_reg ;
 int halbtc_set_rfreg ;
 int halbtc_write_1byte ;
 int halbtc_write_2byte ;
 int halbtc_write_4byte ;
 int halbtc_write_local_reg_1byte ;
 int init_completion (int *) ;
 struct btc_coexist* rtl_btc_coexist (struct rtl_priv*) ;

bool exhalbtc_initlize_variables(struct rtl_priv *rtlpriv)
{
 struct btc_coexist *btcoexist = rtl_btc_coexist(rtlpriv);

 if (!btcoexist)
  return 0;

 halbtc_dbg_init();

 btcoexist->btc_read_1byte = halbtc_read_1byte;
 btcoexist->btc_write_1byte = halbtc_write_1byte;
 btcoexist->btc_write_1byte_bitmask = halbtc_bitmask_write_1byte;
 btcoexist->btc_read_2byte = halbtc_read_2byte;
 btcoexist->btc_write_2byte = halbtc_write_2byte;
 btcoexist->btc_read_4byte = halbtc_read_4byte;
 btcoexist->btc_write_4byte = halbtc_write_4byte;
 btcoexist->btc_write_local_reg_1byte = halbtc_write_local_reg_1byte;

 btcoexist->btc_set_bb_reg = halbtc_set_bbreg;
 btcoexist->btc_get_bb_reg = halbtc_get_bbreg;

 btcoexist->btc_set_rf_reg = halbtc_set_rfreg;
 btcoexist->btc_get_rf_reg = halbtc_get_rfreg;

 btcoexist->btc_fill_h2c = halbtc_fill_h2c_cmd;
 btcoexist->btc_disp_dbg_msg = halbtc_display_dbg_msg;

 btcoexist->btc_get = halbtc_get;
 btcoexist->btc_set = halbtc_set;
 btcoexist->btc_set_bt_reg = halbtc_set_bt_reg;
 btcoexist->btc_get_bt_reg = halbtc_get_bt_reg;

 btcoexist->bt_info.bt_ctrl_buf_size = 0;
 btcoexist->bt_info.agg_buf_size = 5;

 btcoexist->bt_info.increase_scan_dev_num = 0;

 btcoexist->btc_get_bt_coex_supported_feature =
     halbtc_get_bt_coex_supported_feature;
 btcoexist->btc_get_bt_coex_supported_version =
     halbtc_get_bt_coex_supported_version;
 btcoexist->btc_get_bt_phydm_version = halbtc_get_phydm_version;
 btcoexist->btc_phydm_modify_ra_pcr_threshold =
     halbtc_phydm_modify_ra_pcr_threshold;
 btcoexist->btc_phydm_query_phy_counter = halbtc_phydm_query_phy_counter;
 btcoexist->btc_get_ant_det_val_from_bt = halbtc_get_ant_det_val_from_bt;
 btcoexist->btc_get_ble_scan_type_from_bt =
     halbtc_get_ble_scan_type_from_bt;
 btcoexist->btc_get_ble_scan_para_from_bt =
     halbtc_get_ble_scan_para_from_bt;
 btcoexist->btc_get_bt_afh_map_from_bt =
     halbtc_get_bt_afh_map_from_bt;

 init_completion(&btcoexist->bt_mp_comp);

 return 1;
}
