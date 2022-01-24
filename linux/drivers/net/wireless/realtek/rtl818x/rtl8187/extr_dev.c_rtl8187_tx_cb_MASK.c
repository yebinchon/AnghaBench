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
struct urb {int /*<<< orphan*/  status; scalar_t__ context; } ;
struct sk_buff {int dummy; } ;
struct rtl8187b_tx_hdr {int dummy; } ;
struct rtl8187_tx_hdr {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  queue; } ;
struct rtl8187_priv {int /*<<< orphan*/  work; TYPE_2__ b_tx_status; scalar_t__ is_rtl8187b; TYPE_1__* udev; } ;
struct ieee80211_tx_info {int flags; struct ieee80211_hw** rate_driver_data; } ;
struct ieee80211_hw {struct rtl8187_priv* priv; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int IEEE80211_TX_CTL_NO_ACK ; 
 int IEEE80211_TX_STAT_ACK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_tx_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,struct sk_buff*) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct sk_buff*) ; 

__attribute__((used)) static void FUNC9(struct urb *urb)
{
	struct sk_buff *skb = (struct sk_buff *)urb->context;
	struct ieee80211_tx_info *info = FUNC0(skb);
	struct ieee80211_hw *hw = info->rate_driver_data[0];
	struct rtl8187_priv *priv = hw->priv;

	FUNC6(skb, priv->is_rtl8187b ? sizeof(struct rtl8187b_tx_hdr) :
					  sizeof(struct rtl8187_tx_hdr));
	FUNC3(info);

	if (!(urb->status) && !(info->flags & IEEE80211_TX_CTL_NO_ACK)) {
		if (priv->is_rtl8187b) {
			FUNC8(&priv->b_tx_status.queue, skb);

			/* queue is "full", discard last items */
			while (FUNC7(&priv->b_tx_status.queue) > 5) {
				struct sk_buff *old_skb;

				FUNC1(&priv->udev->dev,
					"transmit status queue full\n");

				old_skb = FUNC5(&priv->b_tx_status.queue);
				FUNC4(hw, old_skb);
			}
			return;
		} else {
			info->flags |= IEEE80211_TX_STAT_ACK;
		}
	}
	if (priv->is_rtl8187b)
		FUNC4(hw, skb);
	else {
		/* Retry information for the RTI8187 is only available by
		 * reading a register in the device. We are in interrupt mode
		 * here, thus queue the skb and finish on a work queue. */
		FUNC8(&priv->b_tx_status.queue, skb);
		FUNC2(hw, &priv->work, 0);
	}
}