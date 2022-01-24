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
struct urb {int dummy; } ;
struct sk_buff {scalar_t__ cb; } ;
struct rtl8187_rx_info {struct ieee80211_hw* dev; struct urb* urb; } ;
struct rtl8187_priv {int /*<<< orphan*/  anchored; int /*<<< orphan*/  rx_queue; scalar_t__ is_rtl8187b; int /*<<< orphan*/  udev; } ;
struct ieee80211_hw {struct rtl8187_priv* priv; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RTL8187_MAX_RX ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  rtl8187_rx_cb ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 struct urb* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct urb*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int FUNC12 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct urb*) ; 

__attribute__((used)) static int FUNC14(struct ieee80211_hw *dev)
{
	struct rtl8187_priv *priv = dev->priv;
	struct urb *entry = NULL;
	struct sk_buff *skb;
	struct rtl8187_rx_info *info;
	int ret = 0;

	while (FUNC2(&priv->rx_queue) < 32) {
		skb = FUNC0(RTL8187_MAX_RX, GFP_KERNEL);
		if (!skb) {
			ret = -ENOMEM;
			goto err;
		}
		entry = FUNC6(0, GFP_KERNEL);
		if (!entry) {
			ret = -ENOMEM;
			goto err;
		}
		FUNC8(entry, priv->udev,
				  FUNC11(priv->udev,
				  priv->is_rtl8187b ? 3 : 1),
				  FUNC4(skb),
				  RTL8187_MAX_RX, rtl8187_rx_cb, skb);
		info = (struct rtl8187_rx_info *)skb->cb;
		info->urb = entry;
		info->dev = dev;
		FUNC3(&priv->rx_queue, skb);
		FUNC7(entry, &priv->anchored);
		ret = FUNC12(entry, GFP_KERNEL);
		if (ret) {
			FUNC5(skb, &priv->rx_queue);
			FUNC13(entry);
			FUNC10(entry);
			goto err;
		}
		FUNC10(entry);
	}
	return ret;

err:
	FUNC1(skb);
	FUNC9(&priv->anchored);
	return ret;
}