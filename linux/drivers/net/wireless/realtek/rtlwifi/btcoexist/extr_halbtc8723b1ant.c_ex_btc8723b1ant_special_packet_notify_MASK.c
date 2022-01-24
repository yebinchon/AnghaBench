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
 int /*<<< orphan*/  BTC_GET_BL_WIFI_4_WAY_PROGRESS ; 
 int /*<<< orphan*/  BTC_GET_U4_WIFI_LINK_STATUS ; 
 scalar_t__ BTC_PACKET_ARP ; 
 scalar_t__ BTC_PACKET_DHCP ; 
 scalar_t__ BTC_PACKET_EAPOL ; 
 int /*<<< orphan*/  COMP_BT_COEXIST ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  NORMAL_EXEC ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 TYPE_2__* coex_dm ; 
 TYPE_1__* coex_sta ; 
 int /*<<< orphan*/  FUNC1 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC2 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC3 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC4 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC5 (struct btc_coexist*,int /*<<< orphan*/ ,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct btc_coexist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 

void FUNC10(struct btc_coexist *btcoexist,
					   u8 type)
{
	struct rtl_priv *rtlpriv = btcoexist->adapter;
	bool bt_hs_on = false;
	u32 wifi_link_status = 0;
	u32 num_of_wifi_link = 0;
	bool bt_ctrl_agg_buf_size = false, under_4way = false;
	u8 agg_buf_size = 5;

	btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_4_WAY_PROGRESS,
			   &under_4way);

	if (btcoexist->manual_control || btcoexist->stop_coex_dm ||
	    coex_sta->bt_disabled)
		return;

	if (type == BTC_PACKET_DHCP || type == BTC_PACKET_EAPOL ||
	    type == BTC_PACKET_ARP) {
		if (type == BTC_PACKET_ARP) {
			FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
				 "[BTCoex], special Packet ARP notify\n");

			coex_dm->arp_cnt++;
			FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
				 "[BTCoex], ARP Packet Count = %d\n",
				 coex_dm->arp_cnt);

			if ((coex_dm->arp_cnt >= 10) && (!under_4way))
				/* if APR PKT > 10 after connect, do not go to
				 * ActionWifiConnectedSpecificPacket(btcoexist)
				 */
				coex_sta->wifi_is_high_pri_task = false;
			else
				coex_sta->wifi_is_high_pri_task = true;
		} else {
			coex_sta->wifi_is_high_pri_task = true;
			FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
				 "[BTCoex], special Packet DHCP or EAPOL notify\n");
		}
	} else {
		coex_sta->wifi_is_high_pri_task = false;
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
			 "[BTCoex], special Packet [Type = %d] notify\n",
			 type);
	}

	btcoexist->btc_get(btcoexist, BTC_GET_U4_WIFI_LINK_STATUS,
		&wifi_link_status);
	num_of_wifi_link = wifi_link_status >> 16;
	if (num_of_wifi_link >= 2) {
		FUNC6(btcoexist, NORMAL_EXEC, 0, 0, 0, 0);
		FUNC5(btcoexist, NORMAL_EXEC, false,
					   bt_ctrl_agg_buf_size, agg_buf_size);
		FUNC4(btcoexist);
		return;
	}

	coex_sta->special_pkt_period_cnt = 0;

	btcoexist->btc_get(btcoexist, BTC_GET_BL_HS_OPERATION, &bt_hs_on);
	if (coex_sta->c2h_bt_inquiry_page) {
		FUNC1(btcoexist);
		return;
	} else if (bt_hs_on) {
		FUNC2(btcoexist);
		return;
	}

	if (BTC_PACKET_DHCP == type ||
	    BTC_PACKET_EAPOL == type) {
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
			 "[BTCoex], special Packet(%d) notify\n", type);
		FUNC3(btcoexist);
	}
}