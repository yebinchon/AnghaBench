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
typedef  void* u8 ;
typedef  int u16 ;
struct sk_buff {scalar_t__ data; } ;
struct rtw_tx_pkt_info {int seq; int ampdu_en; int stbc; int ldpc; void* bw; void* rate_id; void* rate; void* ampdu_density; void* ampdu_factor; } ;
struct rtw_sta_info {int stbc_en; int ldpc_en; void* rate_id; void* bw_mode; } ;
struct rtw_dev {int dummy; } ;
struct ieee80211_tx_info {int flags; } ;
struct ieee80211_tx_control {struct ieee80211_sta* sta; } ;
struct TYPE_4__ {scalar_t__ ht_supported; } ;
struct TYPE_3__ {scalar_t__ vht_supported; } ;
struct ieee80211_sta {int* supp_rates; scalar_t__ drv_priv; TYPE_2__ ht_cap; TYPE_1__ vht_cap; } ;
struct ieee80211_hdr {int /*<<< orphan*/  seq_ctrl; } ;

/* Variables and functions */
 void* DESC_RATE11M ; 
 void* DESC_RATE54M ; 
 void* DESC_RATE6M ; 
 int IEEE80211_SCTL_SEQ ; 
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int IEEE80211_TX_CTL_AMPDU ; 
 void* RTW_CHANNEL_WIDTH_20 ; 
 void* FUNC1 (struct rtw_dev*,struct ieee80211_sta*) ; 
 void* FUNC2 (struct rtw_dev*,struct ieee80211_sta*) ; 
 void* FUNC3 (struct ieee80211_sta*) ; 
 void* FUNC4 (struct ieee80211_sta*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct rtw_dev *rtwdev,
					struct rtw_tx_pkt_info *pkt_info,
					struct ieee80211_tx_control *control,
					struct sk_buff *skb)
{
	struct ieee80211_sta *sta = control->sta;
	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
	struct ieee80211_tx_info *info = FUNC0(skb);
	struct rtw_sta_info *si;
	u16 seq;
	u8 ampdu_factor = 0;
	u8 ampdu_density = 0;
	bool ampdu_en = false;
	u8 rate = DESC_RATE6M;
	u8 rate_id = 6;
	u8 bw = RTW_CHANNEL_WIDTH_20;
	bool stbc = false;
	bool ldpc = false;

	seq = (FUNC5(hdr->seq_ctrl) & IEEE80211_SCTL_SEQ) >> 4;

	/* for broadcast/multicast, use default values */
	if (!sta)
		goto out;

	if (info->flags & IEEE80211_TX_CTL_AMPDU) {
		ampdu_en = true;
		ampdu_factor = FUNC4(sta);
		ampdu_density = FUNC3(sta);
	}

	if (sta->vht_cap.vht_supported)
		rate = FUNC2(rtwdev, sta);
	else if (sta->ht_cap.ht_supported)
		rate = FUNC1(rtwdev, sta);
	else if (sta->supp_rates[0] <= 0xf)
		rate = DESC_RATE11M;
	else
		rate = DESC_RATE54M;

	si = (struct rtw_sta_info *)sta->drv_priv;

	bw = si->bw_mode;
	rate_id = si->rate_id;
	stbc = si->stbc_en;
	ldpc = si->ldpc_en;

out:
	pkt_info->seq = seq;
	pkt_info->ampdu_factor = ampdu_factor;
	pkt_info->ampdu_density = ampdu_density;
	pkt_info->ampdu_en = ampdu_en;
	pkt_info->rate = rate;
	pkt_info->rate_id = rate_id;
	pkt_info->bw = bw;
	pkt_info->stbc = stbc;
	pkt_info->ldpc = ldpc;
}