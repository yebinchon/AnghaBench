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
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct TYPE_4__ {scalar_t__ tx_cnt; int /*<<< orphan*/  tx_unicast; } ;
struct rtw_vif {TYPE_2__ stats; } ;
struct TYPE_3__ {int /*<<< orphan*/  tx_cnt; int /*<<< orphan*/  tx_unicast; } ;
struct rtw_dev {TYPE_1__ stats; } ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ieee80211_hdr {int /*<<< orphan*/  addr1; int /*<<< orphan*/  frame_control; } ;

/* Variables and functions */
 scalar_t__ RTW_LPS_THRESHOLD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rtw_dev*,struct rtw_vif*) ; 

__attribute__((used)) static
void FUNC4(struct rtw_dev *rtwdev, struct ieee80211_vif *vif,
		  struct sk_buff *skb)
{
	struct ieee80211_hdr *hdr;
	struct rtw_vif *rtwvif;

	hdr = (struct ieee80211_hdr *)skb->data;

	if (!FUNC0(hdr->frame_control))
		return;

	if (!FUNC1(hdr->addr1) &&
	    !FUNC2(hdr->addr1)) {
		rtwdev->stats.tx_unicast += skb->len;
		rtwdev->stats.tx_cnt++;
		if (vif) {
			rtwvif = (struct rtw_vif *)vif->drv_priv;
			rtwvif->stats.tx_unicast += skb->len;
			rtwvif->stats.tx_cnt++;
			if (rtwvif->stats.tx_cnt > RTW_LPS_THRESHOLD)
				FUNC3(rtwdev, rtwvif);
		}
	}
}