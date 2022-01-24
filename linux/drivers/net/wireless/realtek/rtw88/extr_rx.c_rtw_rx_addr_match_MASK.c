#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct rtw_rx_pkt_stat {int /*<<< orphan*/  phy_status; scalar_t__ icv_err; scalar_t__ crc_err; } ;
struct rtw_rx_addr_match_data {int /*<<< orphan*/  bssid; struct rtw_rx_pkt_stat* pkt_stat; struct ieee80211_hdr* hdr; struct rtw_dev* rtwdev; } ;
struct rtw_dev {int dummy; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hdr*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtw_dev*,int /*<<< orphan*/ ,struct rtw_rx_addr_match_data*) ; 
 int /*<<< orphan*/  rtw_rx_addr_match_iter ; 

__attribute__((used)) static void FUNC3(struct rtw_dev *rtwdev,
			      struct rtw_rx_pkt_stat *pkt_stat,
			      struct ieee80211_hdr *hdr)
{
	struct rtw_rx_addr_match_data data = {};

	if (pkt_stat->crc_err || pkt_stat->icv_err || !pkt_stat->phy_status ||
	    FUNC1(hdr->frame_control))
		return;

	data.rtwdev = rtwdev;
	data.hdr = hdr;
	data.pkt_stat = pkt_stat;
	data.bssid = FUNC0(hdr);

	FUNC2(rtwdev, rtw_rx_addr_match_iter, &data);
}