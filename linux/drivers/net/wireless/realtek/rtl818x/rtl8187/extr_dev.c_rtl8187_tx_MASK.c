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
typedef  int u32 ;
typedef  int u16 ;
struct urb {int /*<<< orphan*/  transfer_flags; struct rtl8187_priv* priv; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct rtl8187b_tx_hdr {int /*<<< orphan*/  tx_duration; void* retry; void* rts_duration; void* flags; } ;
struct rtl8187_tx_hdr {void* retry; void* rts_duration; scalar_t__ len; void* flags; } ;
struct rtl8187_priv {int seqno; int /*<<< orphan*/  anchored; int /*<<< orphan*/  udev; int /*<<< orphan*/  vif; int /*<<< orphan*/  is_rtl8187b; } ;
struct TYPE_5__ {TYPE_1__* rates; } ;
struct ieee80211_tx_info {int flags; struct urb** rate_driver_data; int /*<<< orphan*/  band; TYPE_2__ control; } ;
struct ieee80211_tx_control {int dummy; } ;
struct ieee80211_rate {int hw_value; } ;
struct ieee80211_hw {int /*<<< orphan*/  transfer_flags; struct rtl8187_priv* priv; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; int /*<<< orphan*/  seq_ctrl; } ;
typedef  void* __le16 ;
struct TYPE_6__ {int hw_value; } ;
struct TYPE_4__ {int flags; int count; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int IEEE80211_FCTL_FTYPE ; 
 int IEEE80211_FTYPE_MGMT ; 
 int IEEE80211_SCTL_FRAG ; 
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int IEEE80211_TX_CTL_ASSIGN_SEQ ; 
 int IEEE80211_TX_CTL_FIRST_FRAGMENT ; 
 int IEEE80211_TX_RC_USE_CTS_PROTECT ; 
 int IEEE80211_TX_RC_USE_RTS_CTS ; 
 int RTL818X_TX_DESC_FLAG_CTS ; 
 int RTL818X_TX_DESC_FLAG_MOREFRAG ; 
 int RTL818X_TX_DESC_FLAG_NO_ENC ; 
 int RTL818X_TX_DESC_FLAG_RTS ; 
 int /*<<< orphan*/  URB_ZERO_PACKET ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (int) ; 
 void* FUNC3 (struct urb*,int /*<<< orphan*/ ,int,struct ieee80211_tx_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct ieee80211_rate*) ; 
 TYPE_3__* FUNC5 (struct urb*,struct ieee80211_tx_info*) ; 
 struct ieee80211_rate* FUNC6 (struct urb*,struct ieee80211_tx_info*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 void* FUNC8 (struct urb*,int /*<<< orphan*/ ,int,struct ieee80211_tx_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct rtl8187b_tx_hdr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rtl8187_tx_cb ; 
 size_t FUNC12 (struct sk_buff*) ; 
 void* FUNC13 (struct sk_buff*,int) ; 
 struct urb* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (struct urb*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC19 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct urb*) ; 

__attribute__((used)) static void FUNC21(struct ieee80211_hw *dev,
		       struct ieee80211_tx_control *control,
		       struct sk_buff *skb)
{
	struct rtl8187_priv *priv = dev->priv;
	struct ieee80211_tx_info *info = FUNC0(skb);
	struct ieee80211_hdr *tx_hdr =	(struct ieee80211_hdr *)(skb->data);
	unsigned int ep;
	void *buf;
	struct urb *urb;
	__le16 rts_dur = 0;
	u32 flags;
	int rc;

	urb = FUNC14(0, GFP_ATOMIC);
	if (!urb) {
		FUNC9(skb);
		return;
	}

	flags = skb->len;
	flags |= RTL818X_TX_DESC_FLAG_NO_ENC;

	flags |= FUNC6(dev, info)->hw_value << 24;
	if (FUNC7(tx_hdr->frame_control))
		flags |= RTL818X_TX_DESC_FLAG_MOREFRAG;

	/* HW will perform RTS-CTS when only RTS flags is set.
	 * HW will perform CTS-to-self when both RTS and CTS flags are set.
	 * RTS rate and RTS duration will be used also for CTS-to-self.
	 */
	if (info->control.rates[0].flags & IEEE80211_TX_RC_USE_RTS_CTS) {
		flags |= RTL818X_TX_DESC_FLAG_RTS;
		flags |= FUNC5(dev, info)->hw_value << 19;
		rts_dur = FUNC8(dev, priv->vif,
						 skb->len, info);
	} else if (info->control.rates[0].flags & IEEE80211_TX_RC_USE_CTS_PROTECT) {
		flags |= RTL818X_TX_DESC_FLAG_RTS | RTL818X_TX_DESC_FLAG_CTS;
		flags |= FUNC5(dev, info)->hw_value << 19;
		rts_dur = FUNC3(dev, priv->vif,
						 skb->len, info);
	}

	if (info->flags & IEEE80211_TX_CTL_ASSIGN_SEQ) {
		if (info->flags & IEEE80211_TX_CTL_FIRST_FRAGMENT)
			priv->seqno += 0x10;
		tx_hdr->seq_ctrl &= FUNC1(IEEE80211_SCTL_FRAG);
		tx_hdr->seq_ctrl |= FUNC1(priv->seqno);
	}

	if (!priv->is_rtl8187b) {
		struct rtl8187_tx_hdr *hdr = FUNC13(skb, sizeof(*hdr));
		hdr->flags = FUNC2(flags);
		hdr->len = 0;
		hdr->rts_duration = rts_dur;
		hdr->retry = FUNC2((info->control.rates[0].count - 1) << 8);
		buf = hdr;

		ep = 2;
	} else {
		/* fc needs to be calculated before skb_push() */
		unsigned int epmap[4] = { 6, 7, 5, 4 };
		u16 fc = FUNC10(tx_hdr->frame_control);

		struct rtl8187b_tx_hdr *hdr = FUNC13(skb, sizeof(*hdr));
		struct ieee80211_rate *txrate =
			FUNC6(dev, info);
		FUNC11(hdr, 0, sizeof(*hdr));
		hdr->flags = FUNC2(flags);
		hdr->rts_duration = rts_dur;
		hdr->retry = FUNC2((info->control.rates[0].count - 1) << 8);
		hdr->tx_duration =
			FUNC4(dev, priv->vif,
							 info->band,
							 skb->len, txrate);
		buf = hdr;

		if ((fc & IEEE80211_FCTL_FTYPE) == IEEE80211_FTYPE_MGMT)
			ep = 12;
		else
			ep = epmap[FUNC12(skb)];
	}

	info->rate_driver_data[0] = dev;
	info->rate_driver_data[1] = urb;

	FUNC16(urb, priv->udev, FUNC18(priv->udev, ep),
			  buf, skb->len, rtl8187_tx_cb, skb);
	urb->transfer_flags |= URB_ZERO_PACKET;
	FUNC15(urb, &priv->anchored);
	rc = FUNC19(urb, GFP_ATOMIC);
	if (rc < 0) {
		FUNC20(urb);
		FUNC9(skb);
	}
	FUNC17(urb);
}