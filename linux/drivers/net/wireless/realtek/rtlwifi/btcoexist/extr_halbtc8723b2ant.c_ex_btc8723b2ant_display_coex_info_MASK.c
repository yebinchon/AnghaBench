#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct seq_file {int dummy; } ;
struct btc_stack_info {int hci_version; scalar_t__ profile_notified; } ;
struct btc_bt_link_info {int /*<<< orphan*/  a2dp_exist; int /*<<< orphan*/  pan_exist; int /*<<< orphan*/  hid_exist; int /*<<< orphan*/  sco_exist; } ;
struct btc_board_info {scalar_t__ pg_ant_num; int btdm_ant_num; } ;
struct btc_coexist {int (* btc_read_1byte ) (struct btc_coexist*,int) ;scalar_t__ (* btc_read_4byte ) (struct btc_coexist*,int) ;int /*<<< orphan*/  (* btc_disp_dbg_msg ) (struct btc_coexist*,int /*<<< orphan*/ ,struct seq_file*) ;scalar_t__ auto_report_2ant; int /*<<< orphan*/  (* btc_get ) (struct btc_coexist*,int /*<<< orphan*/ ,scalar_t__*) ;scalar_t__ manual_control; struct btc_bt_link_info bt_link_info; struct btc_stack_info stack_info; struct btc_board_info board_info; } ;
typedef  int s32 ;
struct TYPE_4__ {int cur_ps_tdma; scalar_t__ cur_dec_bt_pwr_lvl; int cur_ignore_wlan_act; int /*<<< orphan*/  bt_rf0x1e_backup; int /*<<< orphan*/  auto_tdma_adjust; int /*<<< orphan*/  ps_tdma_para; int /*<<< orphan*/  cur_dac_swing_lvl; int /*<<< orphan*/  cur_dac_swing_on; int /*<<< orphan*/  cur_adc_back_off; int /*<<< orphan*/  cur_agc_table_en; int /*<<< orphan*/  limited_dig; int /*<<< orphan*/  cur_low_penalty_ra; int /*<<< orphan*/  cur_rf_rx_lpf_shrink; int /*<<< orphan*/  wifi_chnl_info; } ;
struct TYPE_3__ {int bt_info_ext; int* bt_info_c2h_cnt; scalar_t__* bt_info_c2h; scalar_t__ high_priority_rx; int high_priority_tx; scalar_t__ low_priority_rx; int low_priority_tx; scalar_t__ under_lps; scalar_t__ under_ips; } ;

/* Variables and functions */
 int BIT0 ; 
 int /*<<< orphan*/  BTC_DBG_DISP_BT_LINK_INFO ; 
 int /*<<< orphan*/  BTC_DBG_DISP_COEX_STATISTICS ; 
 int /*<<< orphan*/  BTC_DBG_DISP_FW_PWR_MODE_CMD ; 
 int /*<<< orphan*/  BTC_GET_BL_HS_OPERATION ; 
 int /*<<< orphan*/  BTC_GET_BL_WIFI_BUSY ; 
 int /*<<< orphan*/  BTC_GET_BL_WIFI_LINK ; 
 int /*<<< orphan*/  BTC_GET_BL_WIFI_ROAM ; 
 int /*<<< orphan*/  BTC_GET_BL_WIFI_SCAN ; 
 int /*<<< orphan*/  BTC_GET_BL_WIFI_UNDER_5G ; 
 int /*<<< orphan*/  BTC_GET_S4_HS_RSSI ; 
 int /*<<< orphan*/  BTC_GET_S4_WIFI_RSSI ; 
 int /*<<< orphan*/  BTC_GET_U1_AP_NUM ; 
 int /*<<< orphan*/  BTC_GET_U1_WIFI_DOT11_CHNL ; 
 int /*<<< orphan*/  BTC_GET_U1_WIFI_HS_CHNL ; 
 int /*<<< orphan*/  BTC_GET_U4_BT_PATCH_VER ; 
 int /*<<< orphan*/  BTC_GET_U4_WIFI_BW ; 
 int /*<<< orphan*/  BTC_GET_U4_WIFI_FW_VER ; 
 int /*<<< orphan*/  BTC_GET_U4_WIFI_TRAFFIC_DIRECTION ; 
 scalar_t__ BTC_WIFI_BW_HT40 ; 
 scalar_t__ BTC_WIFI_BW_LEGACY ; 
 scalar_t__ BTC_WIFI_TRAFFIC_TX ; 
 int BT_INFO_SRC_8723B_2ANT_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct btc_coexist*) ; 
 TYPE_2__* coex_dm ; 
 TYPE_1__* coex_sta ; 
 char** glbt_info_src_8723b_2ant ; 
 int /*<<< orphan*/  glcoex_ver_8723b_2ant ; 
 int /*<<< orphan*/  glcoex_ver_date_8723b_2ant ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct btc_coexist*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct btc_coexist*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct btc_coexist*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (struct btc_coexist*,int /*<<< orphan*/ ,struct seq_file*) ; 
 int /*<<< orphan*/  FUNC11 (struct btc_coexist*,int /*<<< orphan*/ ,struct seq_file*) ; 
 int FUNC12 (struct btc_coexist*,int) ; 
 scalar_t__ FUNC13 (struct btc_coexist*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct btc_coexist*,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC15 (struct btc_coexist*,int) ; 
 int FUNC16 (struct btc_coexist*,int) ; 
 int FUNC17 (struct btc_coexist*,int) ; 
 scalar_t__ FUNC18 (struct btc_coexist*,int) ; 
 scalar_t__ FUNC19 (struct btc_coexist*,int) ; 
 scalar_t__ FUNC20 (struct btc_coexist*,int) ; 
 int FUNC21 (struct btc_coexist*,int) ; 
 int FUNC22 (struct btc_coexist*,int) ; 
 scalar_t__ FUNC23 (struct btc_coexist*,int) ; 
 int FUNC24 (struct btc_coexist*,int) ; 
 int /*<<< orphan*/  FUNC25 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC26 (struct btc_coexist*,int) ; 
 int FUNC27 (struct btc_coexist*,int) ; 
 scalar_t__ FUNC28 (struct btc_coexist*,int) ; 
 int FUNC29 (struct btc_coexist*,int) ; 
 scalar_t__ FUNC30 (struct btc_coexist*,int) ; 
 scalar_t__ FUNC31 (struct btc_coexist*,int) ; 
 scalar_t__ FUNC32 (struct btc_coexist*,int) ; 
 scalar_t__ FUNC33 (struct btc_coexist*,int) ; 
 int FUNC34 (struct btc_coexist*,int) ; 
 int FUNC35 (struct btc_coexist*,int) ; 
 int /*<<< orphan*/  FUNC36 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC37 (struct btc_coexist*,int) ; 
 scalar_t__ FUNC38 (struct btc_coexist*,int) ; 
 scalar_t__ FUNC39 (struct btc_coexist*,int) ; 
 int FUNC40 (struct btc_coexist*,int) ; 
 int /*<<< orphan*/  FUNC41 (struct btc_coexist*,int /*<<< orphan*/ ,struct seq_file*) ; 
 int /*<<< orphan*/  FUNC42 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC43 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC44 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC45 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC46 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 

void FUNC47(struct btc_coexist *btcoexist,
				       struct seq_file *m)
{
	struct btc_board_info *board_info = &btcoexist->board_info;
	struct btc_stack_info *stack_info = &btcoexist->stack_info;
	struct btc_bt_link_info *bt_link_info = &btcoexist->bt_link_info;
	u8 u8tmp[4], i, bt_info_ext, ps_tdma_case = 0;
	u32 u32tmp[4];
	bool roam = false, scan = false;
	bool link = false, wifi_under_5g = false;
	bool bt_hs_on = false, wifi_busy = false;
	s32 wifi_rssi = 0, bt_hs_rssi = 0;
	u32 wifi_bw, wifi_traffic_dir, fa_ofdm, fa_cck;
	u8 wifi_dot11_chnl, wifi_hs_chnl;
	u32 fw_ver = 0, bt_patch_ver = 0;
	u8 ap_num = 0;

	FUNC2(m, "\n ============[BT Coexist info]============");

	if (btcoexist->manual_control) {
		FUNC2(m, "\n ==========[Under Manual Control]============");
		FUNC2(m, "\n ==========================================");
	}

	FUNC1(m, "\n %-35s = %d/ %d ",
		   "Ant PG number/ Ant mechanism:",
		   board_info->pg_ant_num, board_info->btdm_ant_num);

	FUNC1(m, "\n %-35s = %s / %d",
		   "BT stack/ hci ext ver",
		   ((stack_info->profile_notified) ? "Yes" : "No"),
		   stack_info->hci_version);

	btcoexist->btc_get(btcoexist, BTC_GET_U4_BT_PATCH_VER, &bt_patch_ver);
	btcoexist->btc_get(btcoexist, BTC_GET_U4_WIFI_FW_VER, &fw_ver);
	FUNC1(m, "\n %-35s = %d_%x/ 0x%x/ 0x%x(%d)",
		   "CoexVer/ FwVer/ PatchVer",
		   glcoex_ver_date_8723b_2ant, glcoex_ver_8723b_2ant,
		   fw_ver, bt_patch_ver, bt_patch_ver);

	btcoexist->btc_get(btcoexist, BTC_GET_BL_HS_OPERATION, &bt_hs_on);
	btcoexist->btc_get(btcoexist, BTC_GET_U1_WIFI_DOT11_CHNL,
			   &wifi_dot11_chnl);
	btcoexist->btc_get(btcoexist, BTC_GET_U1_WIFI_HS_CHNL, &wifi_hs_chnl);

	FUNC1(m, "\n %-35s = %d / %d(%d)",
		   "Dot11 channel / HsChnl(HsMode)",
		   wifi_dot11_chnl, wifi_hs_chnl, bt_hs_on);

	FUNC1(m, "\n %-35s = %3ph ",
		   "H2C Wifi inform bt chnl Info", coex_dm->wifi_chnl_info);

	btcoexist->btc_get(btcoexist, BTC_GET_S4_WIFI_RSSI, &wifi_rssi);
	btcoexist->btc_get(btcoexist, BTC_GET_S4_HS_RSSI, &bt_hs_rssi);
	btcoexist->btc_get(btcoexist, BTC_GET_U1_AP_NUM, &ap_num);
	FUNC1(m, "\n %-35s = %d/ %d/ %d",
		   "Wifi rssi/ HS rssi/ AP#", wifi_rssi, bt_hs_rssi, ap_num);

	btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_SCAN, &scan);
	btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_LINK, &link);
	btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_ROAM, &roam);
	FUNC1(m, "\n %-35s = %d/ %d/ %d ",
		   "Wifi link/ roam/ scan", link, roam, scan);

	btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_UNDER_5G, &wifi_under_5g);
	btcoexist->btc_get(btcoexist, BTC_GET_U4_WIFI_BW, &wifi_bw);
	btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_BUSY, &wifi_busy);
	btcoexist->btc_get(btcoexist, BTC_GET_U4_WIFI_TRAFFIC_DIRECTION,
			   &wifi_traffic_dir);
	FUNC1(m, "\n %-35s = %s / %s/ %s ",
		   "Wifi status", (wifi_under_5g ? "5G" : "2.4G"),
		 ((wifi_bw == BTC_WIFI_BW_LEGACY) ? "Legacy" :
		 (((wifi_bw == BTC_WIFI_BW_HT40) ? "HT40" : "HT20"))),
		 ((!wifi_busy) ? "idle" :
		 ((wifi_traffic_dir == BTC_WIFI_TRAFFIC_TX) ?
		  "uplink" : "downlink")));

	FUNC1(m, "\n %-35s = %d / %d / %d / %d",
		   "SCO/HID/PAN/A2DP",
		   bt_link_info->sco_exist, bt_link_info->hid_exist,
		   bt_link_info->pan_exist, bt_link_info->a2dp_exist);
	btcoexist->btc_disp_dbg_msg(btcoexist, BTC_DBG_DISP_BT_LINK_INFO, m);

	bt_info_ext = coex_sta->bt_info_ext;
	FUNC1(m, "\n %-35s = %s",
		   "BT Info A2DP rate",
		   (bt_info_ext & BIT0) ? "Basic rate" : "EDR rate");

	for (i = 0; i < BT_INFO_SRC_8723B_2ANT_MAX; i++) {
		if (coex_sta->bt_info_c2h_cnt[i]) {
			FUNC1(m, "\n %-35s = %7ph(%d)",
				   glbt_info_src_8723b_2ant[i],
				   coex_sta->bt_info_c2h[i],
				   coex_sta->bt_info_c2h_cnt[i]);
		}
	}

	FUNC1(m, "\n %-35s = %s/%s",
		   "PS state, IPS/LPS",
		   ((coex_sta->under_ips ? "IPS ON" : "IPS OFF")),
		   ((coex_sta->under_lps ? "LPS ON" : "LPS OFF")));
	btcoexist->btc_disp_dbg_msg(btcoexist, BTC_DBG_DISP_FW_PWR_MODE_CMD, m);

	/* Sw mechanism	*/
	FUNC1(m,
		   "\n %-35s", "============[Sw mechanism]============");
	FUNC1(m, "\n %-35s = %d/ %d/ %d ",
		   "SM1[ShRf/ LpRA/ LimDig]", coex_dm->cur_rf_rx_lpf_shrink,
		   coex_dm->cur_low_penalty_ra, coex_dm->limited_dig);
	FUNC1(m, "\n %-35s = %d/ %d/ %d(0x%x) ",
		   "SM2[AgcT/ AdcB/ SwDacSwing(lvl)]",
		   coex_dm->cur_agc_table_en, coex_dm->cur_adc_back_off,
		   coex_dm->cur_dac_swing_on, coex_dm->cur_dac_swing_lvl);

	/* Fw mechanism	*/
	FUNC1(m, "\n %-35s",
		   "============[Fw mechanism]============");

	ps_tdma_case = coex_dm->cur_ps_tdma;
	FUNC1(m, "\n %-35s = %5ph case-%d (auto:%d)",
		   "PS TDMA", coex_dm->ps_tdma_para,
		   ps_tdma_case, coex_dm->auto_tdma_adjust);

	FUNC1(m, "\n %-35s = %d/ %d ",
		   "DecBtPwr/ IgnWlanAct", coex_dm->cur_dec_bt_pwr_lvl,
		   coex_dm->cur_ignore_wlan_act);

	/* Hw setting */
	FUNC1(m, "\n %-35s",
		   "============[Hw setting]============");

	FUNC1(m, "\n %-35s = 0x%x",
		   "RF-A, 0x1e initVal", coex_dm->bt_rf0x1e_backup);

	u8tmp[0] = btcoexist->btc_read_1byte(btcoexist, 0x778);
	u32tmp[0] = btcoexist->btc_read_4byte(btcoexist, 0x880);
	FUNC1(m, "\n %-35s = 0x%x/ 0x%x",
		   "0x778/0x880[29:25]", u8tmp[0],
		   (u32tmp[0] & 0x3e000000) >> 25);

	u32tmp[0] = btcoexist->btc_read_4byte(btcoexist, 0x948);
	u8tmp[0] = btcoexist->btc_read_1byte(btcoexist, 0x67);
	u8tmp[1] = btcoexist->btc_read_1byte(btcoexist, 0x765);
	FUNC1(m, "\n %-35s = 0x%x/ 0x%x/ 0x%x",
		   "0x948/ 0x67[5] / 0x765",
		   u32tmp[0], ((u8tmp[0] & 0x20) >> 5), u8tmp[1]);

	u32tmp[0] = btcoexist->btc_read_4byte(btcoexist, 0x92c);
	u32tmp[1] = btcoexist->btc_read_4byte(btcoexist, 0x930);
	u32tmp[2] = btcoexist->btc_read_4byte(btcoexist, 0x944);
	FUNC1(m, "\n %-35s = 0x%x/ 0x%x/ 0x%x",
		   "0x92c[1:0]/ 0x930[7:0]/0x944[1:0]",
		   u32tmp[0] & 0x3, u32tmp[1] & 0xff, u32tmp[2] & 0x3);

	u8tmp[0] = btcoexist->btc_read_1byte(btcoexist, 0x39);
	u8tmp[1] = btcoexist->btc_read_1byte(btcoexist, 0x40);
	u32tmp[0] = btcoexist->btc_read_4byte(btcoexist, 0x4c);
	u8tmp[2] = btcoexist->btc_read_1byte(btcoexist, 0x64);
	FUNC1(m, "\n %-35s = 0x%x/ 0x%x/ 0x%x/ 0x%x",
		   "0x38[11]/0x40/0x4c[24:23]/0x64[0]",
		   ((u8tmp[0] & 0x8) >> 3), u8tmp[1],
		   ((u32tmp[0] & 0x01800000) >> 23), u8tmp[2] & 0x1);

	u32tmp[0] = btcoexist->btc_read_4byte(btcoexist, 0x550);
	u8tmp[0] = btcoexist->btc_read_1byte(btcoexist, 0x522);
	FUNC1(m, "\n %-35s = 0x%x/ 0x%x",
		   "0x550(bcn ctrl)/0x522", u32tmp[0], u8tmp[0]);

	u32tmp[0] = btcoexist->btc_read_4byte(btcoexist, 0xc50);
	u8tmp[0] = btcoexist->btc_read_1byte(btcoexist, 0x49c);
	FUNC1(m, "\n %-35s = 0x%x/ 0x%x",
		   "0xc50(dig)/0x49c(null-drop)", u32tmp[0] & 0xff, u8tmp[0]);

	u32tmp[0] = btcoexist->btc_read_4byte(btcoexist, 0xda0);
	u32tmp[1] = btcoexist->btc_read_4byte(btcoexist, 0xda4);
	u32tmp[2] = btcoexist->btc_read_4byte(btcoexist, 0xda8);
	u32tmp[3] = btcoexist->btc_read_4byte(btcoexist, 0xcf0);

	u8tmp[0] = btcoexist->btc_read_1byte(btcoexist, 0xa5b);
	u8tmp[1] = btcoexist->btc_read_1byte(btcoexist, 0xa5c);

	fa_ofdm = ((u32tmp[0]&0xffff0000) >> 16) +
		  ((u32tmp[1]&0xffff0000) >> 16) +
		   (u32tmp[1] & 0xffff) +
		   (u32tmp[2] & 0xffff) +
		  ((u32tmp[3]&0xffff0000) >> 16) +
		   (u32tmp[3] & 0xffff);
	fa_cck = (u8tmp[0] << 8) + u8tmp[1];

	FUNC1(m, "\n %-35s = 0x%x/ 0x%x/ 0x%x",
		   "OFDM-CCA/OFDM-FA/CCK-FA",
		   u32tmp[0] & 0xffff, fa_ofdm, fa_cck);

	u32tmp[0] = btcoexist->btc_read_4byte(btcoexist, 0x6c0);
	u32tmp[1] = btcoexist->btc_read_4byte(btcoexist, 0x6c4);
	u32tmp[2] = btcoexist->btc_read_4byte(btcoexist, 0x6c8);
	u8tmp[0] = btcoexist->btc_read_1byte(btcoexist, 0x6cc);
	FUNC1(m, "\n %-35s = 0x%x/ 0x%x/ 0x%x/ 0x%x",
		   "0x6c0/0x6c4/0x6c8/0x6cc(coexTable)",
		   u32tmp[0], u32tmp[1], u32tmp[2], u8tmp[0]);

	FUNC1(m, "\n %-35s = %d/ %d",
		   "0x770(high-pri rx/tx)",
		   coex_sta->high_priority_rx, coex_sta->high_priority_tx);
	FUNC1(m, "\n %-35s = %d/ %d",
		   "0x774(low-pri rx/tx)", coex_sta->low_priority_rx,
		   coex_sta->low_priority_tx);
	if (btcoexist->auto_report_2ant)
		FUNC0(btcoexist);
	btcoexist->btc_disp_dbg_msg(btcoexist, BTC_DBG_DISP_COEX_STATISTICS, m);
}