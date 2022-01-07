
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct seq_file {int dummy; } ;
struct btc_stack_info {int a2dp_exist; int pan_exist; int hid_exist; int sco_exist; scalar_t__ profile_notified; int hci_version; } ;
struct btc_board_info {int btdm_ant_num; int pg_ant_num; } ;
struct btc_coexist {int (* btc_read_1byte ) (struct btc_coexist*,int) ;scalar_t__ (* btc_read_4byte ) (struct btc_coexist*,int) ;int (* btc_disp_dbg_msg ) (struct btc_coexist*,int ,struct seq_file*) ;scalar_t__ manual_control; int (* btc_get ) (struct btc_coexist*,int ,scalar_t__*) ;struct btc_stack_info stack_info; struct btc_board_info board_info; } ;
struct TYPE_4__ {int wifi_chnl_info; int cur_ps_tdma; int bt_rf0x1e_backup; int cur_ignore_wlan_act; int cur_dec_bt_pwr_lvl; int ps_tdma_para; int cur_dac_swing_lvl; int cur_dac_swing_on; int cur_adc_back_off; int cur_agc_table_en; } ;
struct TYPE_3__ {int bt_info_ext; int* bt_info_c2h_cnt; int low_priority_tx; int low_priority_rx; int high_priority_tx; int high_priority_rx; scalar_t__ under_lps; scalar_t__ under_ips; int * bt_info_c2h; } ;


 int BIT0 ;
 int BTC_DBG_DISP_BT_LINK_INFO ;
 int BTC_DBG_DISP_COEX_STATISTICS ;
 int BTC_DBG_DISP_FW_PWR_MODE_CMD ;
 int BTC_GET_BL_HS_OPERATION ;
 int BTC_GET_BL_WIFI_BUSY ;
 int BTC_GET_BL_WIFI_LINK ;
 int BTC_GET_BL_WIFI_ROAM ;
 int BTC_GET_BL_WIFI_SCAN ;
 int BTC_GET_BL_WIFI_UNDER_5G ;
 int BTC_GET_S4_HS_RSSI ;
 int BTC_GET_S4_WIFI_RSSI ;
 int BTC_GET_U1_WIFI_DOT11_CHNL ;
 int BTC_GET_U1_WIFI_HS_CHNL ;
 int BTC_GET_U4_BT_PATCH_VER ;
 int BTC_GET_U4_WIFI_BW ;
 int BTC_GET_U4_WIFI_FW_VER ;
 int BTC_GET_U4_WIFI_TRAFFIC_DIRECTION ;
 scalar_t__ BTC_WIFI_BW_HT40 ;
 scalar_t__ BTC_WIFI_BW_LEGACY ;
 scalar_t__ BTC_WIFI_TRAFFIC_TX ;
 int BT_INFO_SRC_8821A_2ANT_MAX ;
 TYPE_2__* coex_dm ;
 TYPE_1__* coex_sta ;
 int * glbt_info_src_8821a_2ant ;
 int glcoex_ver_8821a_2ant ;
 int glcoex_ver_date_8821a_2ant ;
 int seq_printf (struct seq_file*,char*,char*,...) ;
 int seq_puts (struct seq_file*,char*) ;
 int stub1 (struct btc_coexist*,int ,scalar_t__*) ;
 int stub10 (struct btc_coexist*,int ,int*) ;
 int stub11 (struct btc_coexist*,int ,int*) ;
 int stub12 (struct btc_coexist*,int ,scalar_t__*) ;
 int stub13 (struct btc_coexist*,int ,int*) ;
 int stub14 (struct btc_coexist*,int ,scalar_t__*) ;
 int stub15 (struct btc_coexist*,int ,struct seq_file*) ;
 int stub16 (struct btc_coexist*,int ,struct seq_file*) ;
 int stub17 (struct btc_coexist*,int) ;
 int stub18 (struct btc_coexist*,int) ;
 int stub19 (struct btc_coexist*,int) ;
 int stub2 (struct btc_coexist*,int ,scalar_t__*) ;
 int stub20 (struct btc_coexist*,int) ;
 scalar_t__ stub21 (struct btc_coexist*,int) ;
 int stub22 (struct btc_coexist*,int) ;
 scalar_t__ stub23 (struct btc_coexist*,int) ;
 scalar_t__ stub24 (struct btc_coexist*,int) ;
 scalar_t__ stub25 (struct btc_coexist*,int) ;
 int stub26 (struct btc_coexist*,int) ;
 scalar_t__ stub27 (struct btc_coexist*,int) ;
 int stub28 (struct btc_coexist*,int) ;
 scalar_t__ stub29 (struct btc_coexist*,int) ;
 int stub3 (struct btc_coexist*,int ,int*) ;
 int stub30 (struct btc_coexist*,int) ;
 int stub31 (struct btc_coexist*,int) ;
 scalar_t__ stub32 (struct btc_coexist*,int) ;
 scalar_t__ stub33 (struct btc_coexist*,int) ;
 scalar_t__ stub34 (struct btc_coexist*,int) ;
 int stub35 (struct btc_coexist*,int) ;
 int stub36 (struct btc_coexist*,int ,struct seq_file*) ;
 int stub4 (struct btc_coexist*,int ,int*) ;
 int stub5 (struct btc_coexist*,int ,int*) ;
 int stub6 (struct btc_coexist*,int ,long*) ;
 int stub7 (struct btc_coexist*,int ,long*) ;
 int stub8 (struct btc_coexist*,int ,int*) ;
 int stub9 (struct btc_coexist*,int ,int*) ;

void ex_btc8821a2ant_display_coex_info(struct btc_coexist *btcoexist,
           struct seq_file *m)
{
 struct btc_board_info *board_info = &btcoexist->board_info;
 struct btc_stack_info *stack_info = &btcoexist->stack_info;
 u8 u1tmp[4], i, bt_info_ext, ps_tdma_case = 0;
 u32 u4tmp[4];
 bool roam = 0, scan = 0, link = 0, wifi_under_5g = 0;
 bool bt_hs_on = 0, wifi_busy = 0;
 long wifi_rssi = 0, bt_hs_rssi = 0;
 u32 wifi_bw, wifi_traffic_dir;
 u8 wifi_dot_11_chnl, wifi_hs_chnl;
 u32 fw_ver = 0, bt_patch_ver = 0;

 seq_puts(m, "\n ============[BT Coexist info]============");

 seq_printf(m, "\n %-35s = %d/ %d ", "Ant PG number/ Ant mechanism:",
     board_info->pg_ant_num, board_info->btdm_ant_num);

 if (btcoexist->manual_control) {
  seq_printf(m, "\n %-35s", "[Action Manual control]!!");
 }

 seq_printf(m, "\n %-35s = %s / %d", "BT stack/ hci ext ver",
     ((stack_info->profile_notified) ? "Yes" : "No"),
     stack_info->hci_version);

 btcoexist->btc_get(btcoexist, BTC_GET_U4_BT_PATCH_VER, &bt_patch_ver);
 btcoexist->btc_get(btcoexist, BTC_GET_U4_WIFI_FW_VER, &fw_ver);
 seq_printf(m, "\n %-35s = %d_%d/ 0x%x/ 0x%x(%d)",
     "CoexVer/ FwVer/ PatchVer",
     glcoex_ver_date_8821a_2ant, glcoex_ver_8821a_2ant,
     fw_ver, bt_patch_ver, bt_patch_ver);

 btcoexist->btc_get(btcoexist,
  BTC_GET_BL_HS_OPERATION, &bt_hs_on);
 btcoexist->btc_get(btcoexist,
  BTC_GET_U1_WIFI_DOT11_CHNL, &wifi_dot_11_chnl);
 btcoexist->btc_get(btcoexist,
  BTC_GET_U1_WIFI_HS_CHNL, &wifi_hs_chnl);
 seq_printf(m, "\n %-35s = %d / %d(%d)",
     "Dot11 channel / HsMode(HsChnl)",
     wifi_dot_11_chnl, bt_hs_on, wifi_hs_chnl);

 seq_printf(m, "\n %-35s = %3ph ",
     "H2C Wifi inform bt chnl Info",
     coex_dm->wifi_chnl_info);

 btcoexist->btc_get(btcoexist, BTC_GET_S4_WIFI_RSSI, &wifi_rssi);
 btcoexist->btc_get(btcoexist, BTC_GET_S4_HS_RSSI, &bt_hs_rssi);
 seq_printf(m, "\n %-35s = %ld/ %ld", "Wifi rssi/ HS rssi",
     wifi_rssi, bt_hs_rssi);

 btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_SCAN, &scan);
 btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_LINK, &link);
 btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_ROAM, &roam);
 seq_printf(m, "\n %-35s = %d/ %d/ %d ", "Wifi link/ roam/ scan",
     link, roam, scan);

 btcoexist->btc_get(btcoexist,
  BTC_GET_BL_WIFI_UNDER_5G, &wifi_under_5g);
 btcoexist->btc_get(btcoexist,
  BTC_GET_U4_WIFI_BW, &wifi_bw);
 btcoexist->btc_get(btcoexist,
  BTC_GET_BL_WIFI_BUSY, &wifi_busy);
 btcoexist->btc_get(btcoexist,
  BTC_GET_U4_WIFI_TRAFFIC_DIRECTION, &wifi_traffic_dir);
 seq_printf(m, "\n %-35s = %s / %s/ %s ", "Wifi status",
     (wifi_under_5g ? "5G" : "2.4G"),
     ((BTC_WIFI_BW_LEGACY == wifi_bw) ? "Legacy" :
      (((BTC_WIFI_BW_HT40 == wifi_bw) ? "HT40" : "HT20"))),
     ((!wifi_busy) ? "idle" :
      ((BTC_WIFI_TRAFFIC_TX == wifi_traffic_dir) ?
       "uplink" : "downlink")));

 if (stack_info->profile_notified) {
  seq_printf(m, "\n %-35s = %d / %d / %d / %d",
      "SCO/HID/PAN/A2DP",
      stack_info->sco_exist, stack_info->hid_exist,
      stack_info->pan_exist, stack_info->a2dp_exist);

  btcoexist->btc_disp_dbg_msg(btcoexist,
         BTC_DBG_DISP_BT_LINK_INFO,
         m);
 }

 bt_info_ext = coex_sta->bt_info_ext;
 seq_printf(m, "\n %-35s = %s", "BT Info A2DP rate",
     (bt_info_ext&BIT0) ? "Basic rate" : "EDR rate");

 for (i = 0; i < BT_INFO_SRC_8821A_2ANT_MAX; i++) {
  if (coex_sta->bt_info_c2h_cnt[i]) {
   seq_printf(m, "\n %-35s = %7ph(%d)",
       glbt_info_src_8821a_2ant[i],
       coex_sta->bt_info_c2h[i],
       coex_sta->bt_info_c2h_cnt[i]);
  }
 }

 seq_printf(m, "\n %-35s = %s/%s",
     "PS state, IPS/LPS",
     ((coex_sta->under_ips ? "IPS ON" : "IPS OFF")),
     ((coex_sta->under_lps ? "LPS ON" : "LPS OFF")));
 btcoexist->btc_disp_dbg_msg(btcoexist, BTC_DBG_DISP_FW_PWR_MODE_CMD, m);


 seq_printf(m, "\n %-35s",
     "============[Sw mechanism]============");
 seq_printf(m, "\n %-35s = %d/ %d/ %d(0x%x) ",
     "SM2[AgcT/ AdcB/ SwDacSwing(lvl)]",
     coex_dm->cur_agc_table_en, coex_dm->cur_adc_back_off,
     coex_dm->cur_dac_swing_on, coex_dm->cur_dac_swing_lvl);


 seq_printf(m, "\n %-35s",
     "============[Fw mechanism]============");

 if (!btcoexist->manual_control) {
  ps_tdma_case = coex_dm->cur_ps_tdma;
  seq_printf(m, "\n %-35s = %5ph case-%d",
      "PS TDMA",
      coex_dm->ps_tdma_para, ps_tdma_case);

  seq_printf(m, "\n %-35s = %d/ %d ", "DecBtPwr/ IgnWlanAct",
      coex_dm->cur_dec_bt_pwr_lvl,
      coex_dm->cur_ignore_wlan_act);
 }


 seq_printf(m, "\n %-35s", "============[Hw setting]============");

 seq_printf(m, "\n %-35s = 0x%x", "RF-A, 0x1e initVal",
     coex_dm->bt_rf0x1e_backup);

 u1tmp[0] = btcoexist->btc_read_1byte(btcoexist, 0x778);
 u1tmp[1] = btcoexist->btc_read_1byte(btcoexist, 0x6cc);
 seq_printf(m, "\n %-35s = 0x%x/ 0x%x ",
     "0x778 (W_Act)/ 0x6cc (CoTab Sel)",
     u1tmp[0], u1tmp[1]);

 u1tmp[0] = btcoexist->btc_read_1byte(btcoexist, 0x8db);
 u1tmp[1] = btcoexist->btc_read_1byte(btcoexist, 0xc5b);
 seq_printf(m, "\n %-35s = 0x%x/ 0x%x",
     "0x8db(ADC)/0xc5b[29:25](DAC)",
     ((u1tmp[0] & 0x60) >> 5), ((u1tmp[1] & 0x3e) >> 1));

 u4tmp[0] = btcoexist->btc_read_4byte(btcoexist, 0xcb4);
 seq_printf(m, "\n %-35s = 0x%x/ 0x%x",
     "0xcb4[7:0](ctrl)/ 0xcb4[29:28](val)",
     u4tmp[0] & 0xff, ((u4tmp[0] & 0x30000000) >> 28));

 u1tmp[0] = btcoexist->btc_read_1byte(btcoexist, 0x40);
 u4tmp[0] = btcoexist->btc_read_4byte(btcoexist, 0x4c);
 u4tmp[1] = btcoexist->btc_read_4byte(btcoexist, 0x974);
 seq_printf(m, "\n %-35s = 0x%x/ 0x%x/ 0x%x",
     "0x40/ 0x4c[24:23]/ 0x974",
     u1tmp[0], ((u4tmp[0] & 0x01800000) >> 23), u4tmp[1]);

 u4tmp[0] = btcoexist->btc_read_4byte(btcoexist, 0x550);
 u1tmp[0] = btcoexist->btc_read_1byte(btcoexist, 0x522);
 seq_printf(m, "\n %-35s = 0x%x/ 0x%x",
     "0x550(bcn ctrl)/0x522",
     u4tmp[0], u1tmp[0]);

 u4tmp[0] = btcoexist->btc_read_4byte(btcoexist, 0xc50);
 u1tmp[0] = btcoexist->btc_read_1byte(btcoexist, 0xa0a);
 seq_printf(m, "\n %-35s = 0x%x/ 0x%x",
     "0xc50(DIG)/0xa0a(CCK-TH)",
     u4tmp[0], u1tmp[0]);

 u4tmp[0] = btcoexist->btc_read_4byte(btcoexist, 0xf48);
 u1tmp[0] = btcoexist->btc_read_1byte(btcoexist, 0xa5b);
 u1tmp[1] = btcoexist->btc_read_1byte(btcoexist, 0xa5c);
 seq_printf(m, "\n %-35s = 0x%x/ 0x%x",
     "OFDM-FA/ CCK-FA",
     u4tmp[0], (u1tmp[0] << 8) + u1tmp[1]);

 u4tmp[0] = btcoexist->btc_read_4byte(btcoexist, 0x6c0);
 u4tmp[1] = btcoexist->btc_read_4byte(btcoexist, 0x6c4);
 u4tmp[2] = btcoexist->btc_read_4byte(btcoexist, 0x6c8);
 seq_printf(m, "\n %-35s = 0x%x/ 0x%x/ 0x%x",
     "0x6c0/0x6c4/0x6c8",
     u4tmp[0], u4tmp[1], u4tmp[2]);

 seq_printf(m, "\n %-35s = %d/ %d",
     "0x770 (hi-pri Rx/Tx)",
     coex_sta->high_priority_rx, coex_sta->high_priority_tx);
 seq_printf(m, "\n %-35s = %d/ %d",
     "0x774(low-pri Rx/Tx)",
     coex_sta->low_priority_rx, coex_sta->low_priority_tx);


 u1tmp[0] = btcoexist->btc_read_1byte(btcoexist, 0x41b);
 seq_printf(m, "\n %-35s = 0x%x",
     "0x41b (mgntQ hang chk == 0xf)",
     u1tmp[0]);

 btcoexist->btc_disp_dbg_msg(btcoexist, BTC_DBG_DISP_COEX_STATISTICS, m);
}
