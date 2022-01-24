#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct rtl8xxxu_rxdesc16 {int pkt_cnt; int pktlen; int drvinfo_sz; int shift; scalar_t__ rxmcs; scalar_t__ rxht; scalar_t__ bw; scalar_t__ crc32; int /*<<< orphan*/  swdec; int /*<<< orphan*/  tsfl; scalar_t__ phy_stats; } ;
struct rtl8xxxu_priv {struct ieee80211_hw* hw; } ;
struct rtl8723au_phy_stats {int dummy; } ;
struct ieee80211_rx_status {int /*<<< orphan*/  band; int /*<<< orphan*/  freq; scalar_t__ rate_idx; int /*<<< orphan*/  encoding; int /*<<< orphan*/  bw; int /*<<< orphan*/  flag; int /*<<< orphan*/  mactime; } ;
struct TYPE_5__ {TYPE_1__* chan; } ;
struct TYPE_6__ {TYPE_2__ chandef; } ;
struct ieee80211_hw {TYPE_3__ conf; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_4__ {int /*<<< orphan*/  band; int /*<<< orphan*/  center_freq; } ;

/* Variables and functions */
 scalar_t__ DESC_RATE_MCS0 ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct ieee80211_rx_status* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  RATE_INFO_BW_40 ; 
 int /*<<< orphan*/  RX_ENC_HT ; 
 int /*<<< orphan*/  RX_FLAG_DECRYPTED ; 
 int /*<<< orphan*/  RX_FLAG_FAILED_FCS_CRC ; 
 int /*<<< orphan*/  RX_FLAG_MACTIME_START ; 
 int RX_TYPE_DATA_PKT ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_rx_status*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl8xxxu_priv*,struct ieee80211_rx_status*,struct rtl8723au_phy_stats*,scalar_t__) ; 
 struct sk_buff* FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 

int FUNC9(struct rtl8xxxu_priv *priv, struct sk_buff *skb)
{
	struct ieee80211_hw *hw = priv->hw;
	struct ieee80211_rx_status *rx_status;
	struct rtl8xxxu_rxdesc16 *rx_desc;
	struct rtl8723au_phy_stats *phy_stats;
	struct sk_buff *next_skb = NULL;
	__le32 *_rx_desc_le;
	u32 *_rx_desc;
	int drvinfo_sz, desc_shift;
	int i, pkt_cnt, pkt_len, urb_len, pkt_offset;

	urb_len = skb->len;
	pkt_cnt = 0;

	do {
		rx_desc = (struct rtl8xxxu_rxdesc16 *)skb->data;
		_rx_desc_le = (__le32 *)skb->data;
		_rx_desc = (u32 *)skb->data;

		for (i = 0;
		     i < (sizeof(struct rtl8xxxu_rxdesc16) / sizeof(u32)); i++)
			_rx_desc[i] = FUNC2(_rx_desc_le[i]);

		/*
		 * Only read pkt_cnt from the header if we're parsing the
		 * first packet
		 */
		if (!pkt_cnt)
			pkt_cnt = rx_desc->pkt_cnt;
		pkt_len = rx_desc->pktlen;

		drvinfo_sz = rx_desc->drvinfo_sz * 8;
		desc_shift = rx_desc->shift;
		pkt_offset = FUNC4(pkt_len + drvinfo_sz + desc_shift +
				     sizeof(struct rtl8xxxu_rxdesc16), 128);

		/*
		 * Only clone the skb if there's enough data at the end to
		 * at least cover the rx descriptor
		 */
		if (pkt_cnt > 1 &&
		    urb_len > (pkt_offset + sizeof(struct rtl8xxxu_rxdesc16)))
			next_skb = FUNC6(skb, GFP_ATOMIC);

		rx_status = FUNC0(skb);
		FUNC3(rx_status, 0, sizeof(struct ieee80211_rx_status));

		FUNC7(skb, sizeof(struct rtl8xxxu_rxdesc16));

		phy_stats = (struct rtl8723au_phy_stats *)skb->data;

		FUNC7(skb, drvinfo_sz + desc_shift);

		FUNC8(skb, pkt_len);

		if (rx_desc->phy_stats)
			FUNC5(priv, rx_status, phy_stats,
						   rx_desc->rxmcs);

		rx_status->mactime = rx_desc->tsfl;
		rx_status->flag |= RX_FLAG_MACTIME_START;

		if (!rx_desc->swdec)
			rx_status->flag |= RX_FLAG_DECRYPTED;
		if (rx_desc->crc32)
			rx_status->flag |= RX_FLAG_FAILED_FCS_CRC;
		if (rx_desc->bw)
			rx_status->bw = RATE_INFO_BW_40;

		if (rx_desc->rxht) {
			rx_status->encoding = RX_ENC_HT;
			rx_status->rate_idx = rx_desc->rxmcs - DESC_RATE_MCS0;
		} else {
			rx_status->rate_idx = rx_desc->rxmcs;
		}

		rx_status->freq = hw->conf.chandef.chan->center_freq;
		rx_status->band = hw->conf.chandef.chan->band;

		FUNC1(hw, skb);

		skb = next_skb;
		if (skb)
			FUNC7(next_skb, pkt_offset);

		pkt_cnt--;
		urb_len -= pkt_offset;
	} while (skb && urb_len > 0 && pkt_cnt > 0);

	return RX_TYPE_DATA_PKT;
}