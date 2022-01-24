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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct rtl_priv {int dummy; } ;
struct btc_coexist {int /*<<< orphan*/  (* btc_get ) (struct btc_coexist*,int /*<<< orphan*/ ,int*) ;scalar_t__ stop_coex_dm; scalar_t__ manual_control; struct rtl_priv* adapter; } ;
struct TYPE_4__ {scalar_t__ arp_cnt; } ;
struct TYPE_3__ {int wifi_is_high_pri_task; scalar_t__ c2h_bt_inquiry_page; scalar_t__ special_pkt_period_cnt; scalar_t__ bt_disabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTC_GET_BL_HS_OPERATION ; 
 int /*<<< orphan*/  BTC_GET_BL_WIFI_UNDER_5G ; 
 int /*<<< orphan*/  BTC_GET_U4_WIFI_LINK_STATUS ; 
 scalar_t__ BTC_PACKET_ARP ; 
 scalar_t__ BTC_PACKET_DHCP ; 
 scalar_t__ BTC_PACKET_EAPOL ; 
 int /*<<< orphan*/  COMP_BT_COEXIST ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  NORMAL_EXEC ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC2 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC3 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC4 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC5 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC6 (struct btc_coexist*,int /*<<< orphan*/ ,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct btc_coexist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* coex_dm ; 
 TYPE_1__* coex_sta ; 
 int /*<<< orphan*/  FUNC8 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 

void FUNC11(struct btc_coexist *btcoexist,
					   u8 type)
{
	struct rtl_priv *rtlpriv = btcoexist->adapter;
	bool bt_hs_on = false;
	bool bt_ctrl_agg_buf_size = false;
	bool wifi_under_5g = false;
	u32 wifi_link_status = 0;
	u32 num_of_wifi_link = 0;
	u8 agg_buf_size = 5;

	if (btcoexist->manual_control || btcoexist->stop_coex_dm ||
	    coex_sta->bt_disabled)
		return;

	btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_UNDER_5G, &wifi_under_5g);
	if (wifi_under_5g) {
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
			 "[BTCoex], RunCoexistMechanism(), return for 5G <===\n");
		FUNC5(btcoexist);
		return;
	}

	if (type == BTC_PACKET_DHCP || type == BTC_PACKET_EAPOL ||
	    type == BTC_PACKET_ARP) {
		coex_sta->wifi_is_high_pri_task = true;

		if (type == BTC_PACKET_ARP) {
			FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
				 "[BTCoex], specific Packet ARP notify\n");
		} else {
			FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
				 "[BTCoex], specific Packet DHCP or EAPOL notify\n");
		}
	} else {
		coex_sta->wifi_is_high_pri_task = false;
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
			 "[BTCoex], specific Packet [Type = %d] notify\n",
			 type);
	}

	coex_sta->special_pkt_period_cnt = 0;

	btcoexist->btc_get(btcoexist, BTC_GET_U4_WIFI_LINK_STATUS,
			   &wifi_link_status);
	num_of_wifi_link = wifi_link_status >> 16;
	if (num_of_wifi_link >= 2) {
		FUNC7(btcoexist, NORMAL_EXEC, 0, 0, 0, 0);
		FUNC6(btcoexist, NORMAL_EXEC, false,
					bt_ctrl_agg_buf_size, agg_buf_size);
		FUNC4(btcoexist);
		return;
	}

	btcoexist->btc_get(btcoexist, BTC_GET_BL_HS_OPERATION, &bt_hs_on);
	if (coex_sta->c2h_bt_inquiry_page) {
		FUNC2(btcoexist);
		return;
	} else if (bt_hs_on) {
		FUNC3(btcoexist);
		return;
	}

	if (type == BTC_PACKET_DHCP || type == BTC_PACKET_EAPOL ||
	    type == BTC_PACKET_ARP) {
		if (type == BTC_PACKET_ARP) {
			coex_dm->arp_cnt++;
			FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
				 "[BTCoex], ARP Packet Count = %d\n",
				 coex_dm->arp_cnt);
			if (coex_dm->arp_cnt >= 10)
				/* if APR PKT > 10 after connect, do not go to
				 * btc8821a1ant_act_wifi_conn_sp_pkt
				 */
				return;
		}

		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
			 "[BTCoex], special Packet(%d) notify\n", type);
		FUNC1(btcoexist);
	}
}