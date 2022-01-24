#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct rtw_sta_info {int /*<<< orphan*/  avg_rssi; } ;
struct rtw_rx_pkt_stat {int /*<<< orphan*/  rssi; } ;
struct rtw_rx_addr_match_data {int /*<<< orphan*/ * bssid; struct rtw_rx_pkt_stat* pkt_stat; struct rtw_dev* rtwdev; struct ieee80211_hdr* hdr; } ;
struct rtw_dev {int /*<<< orphan*/  hw; } ;
struct TYPE_2__ {int /*<<< orphan*/  bssid; } ;
struct ieee80211_vif {int /*<<< orphan*/  addr; TYPE_1__ bss_conf; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;
struct ieee80211_hdr {int /*<<< orphan*/  addr2; int /*<<< orphan*/  frame_control; int /*<<< orphan*/ * addr1; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ieee80211_sta* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void *data, u8 *mac,
				   struct ieee80211_vif *vif)
{
	struct rtw_rx_addr_match_data *iter_data = data;
	struct ieee80211_sta *sta;
	struct ieee80211_hdr *hdr = iter_data->hdr;
	struct rtw_dev *rtwdev = iter_data->rtwdev;
	struct rtw_sta_info *si;
	struct rtw_rx_pkt_stat *pkt_stat = iter_data->pkt_stat;
	u8 *bssid = iter_data->bssid;

	if (FUNC0(vif->bss_conf.bssid, bssid) &&
	    (FUNC0(vif->addr, hdr->addr1) ||
	     FUNC3(hdr->frame_control)))
		sta = FUNC2(rtwdev->hw, hdr->addr2,
						   vif->addr);
	else
		return;

	if (!sta)
		return;

	si = (struct rtw_sta_info *)sta->drv_priv;
	FUNC1(&si->avg_rssi, pkt_stat->rssi);
}