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
typedef  int /*<<< orphan*/  u8 ;
struct skb_info {char rssi; int /*<<< orphan*/  channel; } ;
struct sk_buff {scalar_t__ data; } ;
struct rsi_hw {struct ieee80211_vif** vifs; } ;
struct rsi_common {int /*<<< orphan*/  band; struct rsi_hw* priv; } ;
struct ieee80211_bss_conf {int /*<<< orphan*/  bssid; scalar_t__ assoc; } ;
struct ieee80211_vif {scalar_t__ type; struct ieee80211_bss_conf bss_conf; } ;
struct ieee80211_tx_info {scalar_t__ driver_data; } ;
struct ieee80211_rx_status {char signal; int /*<<< orphan*/  flag; scalar_t__ freq; int /*<<< orphan*/  band; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_hdr {int /*<<< orphan*/  addr2; int /*<<< orphan*/  frame_control; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int RSI_MAX_VIFS ; 
 int /*<<< orphan*/  RX_FLAG_DECRYPTED ; 
 int /*<<< orphan*/  RX_FLAG_IV_STRIPPED ; 
 int /*<<< orphan*/  RX_FLAG_MMIC_STRIPPED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_tx_info*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (struct rsi_common*) ; 
 int /*<<< orphan*/  FUNC9 (struct rsi_common*,int /*<<< orphan*/ ,char,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC11(struct ieee80211_hw *hw,
			       struct sk_buff *skb,
			       struct rsi_common *common,
			       struct ieee80211_rx_status *rxs)
{
	struct rsi_hw *adapter = common->priv;
	struct ieee80211_vif *vif;
	struct ieee80211_bss_conf *bss = NULL;
	struct ieee80211_tx_info *info = FUNC0(skb);
	struct skb_info *rx_params = (struct skb_info *)info->driver_data;
	struct ieee80211_hdr *hdr;
	char rssi = rx_params->rssi;
	u8 hdrlen = 0;
	u8 channel = rx_params->channel;
	s32 freq;
	int i;

	hdr = ((struct ieee80211_hdr *)(skb->data));
	hdrlen = FUNC3(hdr->frame_control);

	FUNC7(info, 0, sizeof(struct ieee80211_tx_info));

	rxs->signal = -(rssi);

	rxs->band = common->band;

	freq = FUNC1(channel, rxs->band);

	if (freq)
		rxs->freq = freq;

	if (FUNC2(hdr->frame_control)) {
		if (FUNC8(common)) {
			FUNC6(skb->data + 4, skb->data, hdrlen);
			FUNC10(skb, 4);
		} else {
			FUNC6(skb->data + 8, skb->data, hdrlen);
			FUNC10(skb, 8);
			rxs->flag |= RX_FLAG_MMIC_STRIPPED;
		}
		rxs->flag |= RX_FLAG_DECRYPTED;
		rxs->flag |= RX_FLAG_IV_STRIPPED;
	}

	for (i = 0; i < RSI_MAX_VIFS; i++) {
		vif = adapter->vifs[i];
		if (!vif)
			continue;
		if (vif->type == NL80211_IFTYPE_STATION) {
			bss = &vif->bss_conf;
			break;
		}
	}
	if (!bss)
		return;
	/* CQM only for connected AP beacons, the RSSI is a weighted avg */
	if (bss->assoc && !(FUNC5(bss->bssid, hdr->addr2, ETH_ALEN))) {
		if (FUNC4(hdr->frame_control))
			FUNC9(common, hdr->addr2, rxs->signal, vif);
	}

	return;
}