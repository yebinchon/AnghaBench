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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {int /*<<< orphan*/  it_present; int /*<<< orphan*/  it_len; scalar_t__ it_version; } ;
struct wilc_wfi_radiotap_cb_hdr {int rate; int tx_flags; TYPE_1__ hdr; } ;
struct wilc_wfi_mon_priv {struct net_device* real_ndev; } ;
struct sk_buff {int* data; scalar_t__ len; struct net_device* dev; struct wilc_wfi_radiotap_cb_hdr* cb; int /*<<< orphan*/  protocol; int /*<<< orphan*/  pkt_type; int /*<<< orphan*/  ip_summed; } ;
struct net_device {int dummy; } ;
typedef  int netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 int EFAULT ; 
 int ENOMEM ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  ETH_P_802_2 ; 
 int /*<<< orphan*/  PACKET_OTHERHOST ; 
 int /*<<< orphan*/  TX_RADIOTAP_PRESENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int*) ; 
 scalar_t__ FUNC7 (int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (struct wilc_wfi_radiotap_cb_hdr*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (struct net_device*,int*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*,char*) ; 
 struct wilc_wfi_mon_priv* FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,scalar_t__) ; 
 struct wilc_wfi_radiotap_cb_hdr* FUNC15 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,int*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*) ; 
 scalar_t__ FUNC18 (struct sk_buff*,struct net_device*) ; 

__attribute__((used)) static netdev_tx_t FUNC19(struct sk_buff *skb,
				     struct net_device *dev)
{
	u32 rtap_len, ret = 0;
	struct wilc_wfi_mon_priv  *mon_priv;
	struct sk_buff *skb2;
	struct wilc_wfi_radiotap_cb_hdr *cb_hdr;
	u8 srcadd[ETH_ALEN];
	u8 bssid[ETH_ALEN];

	mon_priv = FUNC12(dev);
	if (!mon_priv)
		return -EFAULT;

	rtap_len = FUNC6(skb->data);
	if (skb->len < rtap_len)
		return -1;

	FUNC14(skb, rtap_len);

	if (skb->data[0] == 0xc0 && FUNC7(&skb->data[4])) {
		skb2 = FUNC2(skb->len + sizeof(*cb_hdr));
		if (!skb2)
			return -ENOMEM;

		FUNC16(skb2, skb->data, skb->len);

		cb_hdr = FUNC15(skb2, sizeof(*cb_hdr));
		FUNC9(cb_hdr, 0, sizeof(struct wilc_wfi_radiotap_cb_hdr));

		cb_hdr->hdr.it_version = 0; /* PKTHDR_RADIOTAP_VERSION; */

		cb_hdr->hdr.it_len = FUNC0(sizeof(*cb_hdr));

		cb_hdr->hdr.it_present = FUNC1(TX_RADIOTAP_PRESENT);

		cb_hdr->rate = 5;
		cb_hdr->tx_flags = 0x0004;

		skb2->dev = dev;
		FUNC17(skb2);
		skb2->ip_summed = CHECKSUM_UNNECESSARY;
		skb2->pkt_type = PACKET_OTHERHOST;
		skb2->protocol = FUNC5(ETH_P_802_2);
		FUNC9(skb2->cb, 0, sizeof(skb2->cb));

		FUNC13(skb2);

		return 0;
	}
	skb->dev = mon_priv->real_ndev;

	FUNC4(srcadd, &skb->data[10]);
	FUNC4(bssid, &skb->data[16]);
	/*
	 * Identify if data or mgmt packet, if source address and bssid
	 * fields are equal send it to mgmt frames handler
	 */
	if (!(FUNC8(srcadd, bssid, 6))) {
		ret = FUNC10(mon_priv->real_ndev, skb->data, skb->len);
		if (ret)
			FUNC11(dev, "fail to mgmt tx\n");
		FUNC3(skb);
	} else {
		ret = FUNC18(skb, mon_priv->real_ndev);
	}

	return ret;
}