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
typedef  int u32 ;
struct sk_buff {int len; scalar_t__ data; scalar_t__ cb; } ;
struct rx_desc_819x_usb {int dummy; } ;
struct rtl_80211_hdr_1addr {int /*<<< orphan*/  addr1; } ;
struct rtl8192_rx_info {struct net_device* dev; } ;
struct TYPE_2__ {int rxbytesunicast; int /*<<< orphan*/  rxurberr; int /*<<< orphan*/  rxoktotal; } ;
struct r8192_priv {TYPE_1__ stats; int /*<<< orphan*/  ieee80211; } ;
struct net_device {int dummy; } ;
struct ieee80211_rx_stats {int noise; int /*<<< orphan*/  freq; int /*<<< orphan*/  rate; int /*<<< orphan*/  signal; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_24GHZ_BAND ; 
 int RX_URB_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sk_buff*,struct ieee80211_rx_stats*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct ieee80211_rx_stats*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC8(struct sk_buff *skb)
{
	struct rtl8192_rx_info *info = (struct rtl8192_rx_info *)skb->cb;
	struct net_device *dev = info->dev;
	struct r8192_priv *priv = (struct r8192_priv *)FUNC1(dev);
	struct ieee80211_rx_stats stats = {
		.signal = 0,
		.noise = 0x100 - 98,
		.rate = 0,
		.freq = IEEE80211_24GHZ_BAND,
	};
	u32 rx_pkt_len = 0;
	struct rtl_80211_hdr_1addr *ieee80211_hdr = NULL;
	bool unicast_packet = false;

	/* 20 is for ps-poll */
	if ((skb->len >= (20 + sizeof(struct rx_desc_819x_usb))) && (skb->len < RX_URB_SIZE)) {
		/* first packet should not contain Rx aggregation header */
		FUNC6(skb, &stats, false);
		/* TODO */
		/* hardware related info */
		/* Process the MPDU received */
		FUNC7(skb, skb->len - 4/*sCrcLng*/);

		rx_pkt_len = skb->len;
		ieee80211_hdr = (struct rtl_80211_hdr_1addr *)skb->data;
		unicast_packet = false;
		if (FUNC3(ieee80211_hdr->addr1)) {
			/* TODO */
		} else if (FUNC4(ieee80211_hdr->addr1)) {
			/* TODO */
		} else {
			/* unicast packet */
			unicast_packet = true;
		}

		if (!FUNC2(priv->ieee80211, skb, &stats)) {
			FUNC0(skb);
		} else {
			priv->stats.rxoktotal++;
			if (unicast_packet)
				priv->stats.rxbytesunicast += rx_pkt_len;
		}
	} else {
		priv->stats.rxurberr++;
		FUNC5(dev, "actual_length: %d\n", skb->len);
		FUNC0(skb);
	}
}