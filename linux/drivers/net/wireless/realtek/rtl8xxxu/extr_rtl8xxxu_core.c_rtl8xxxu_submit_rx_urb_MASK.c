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
struct sk_buff {int /*<<< orphan*/  data; } ;
struct rtl8xxxu_rx_urb {int /*<<< orphan*/  urb; } ;
struct rtl8xxxu_priv {int /*<<< orphan*/  rx_anchor; int /*<<< orphan*/  pipe_in; int /*<<< orphan*/  udev; scalar_t__ rx_buf_aggregation; struct rtl8xxxu_fileops* fops; } ;
struct rtl8xxxu_fileops {int rx_desc_size; int rx_agg_buf_size; } ;
struct rtl8723au_phy_stats {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IEEE80211_MAX_FRAME_LEN ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rtl8xxxu_rx_complete ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct rtl8xxxu_priv *priv,
				  struct rtl8xxxu_rx_urb *rx_urb)
{
	struct rtl8xxxu_fileops *fops = priv->fops;
	struct sk_buff *skb;
	int skb_size;
	int ret, rx_desc_sz;

	rx_desc_sz = fops->rx_desc_size;

	if (priv->rx_buf_aggregation && fops->rx_agg_buf_size) {
		skb_size = fops->rx_agg_buf_size;
		skb_size += (rx_desc_sz + sizeof(struct rtl8723au_phy_stats));
	} else {
		skb_size = IEEE80211_MAX_FRAME_LEN;
	}

	skb = FUNC0(NULL, skb_size, GFP_KERNEL);
	if (!skb)
		return -ENOMEM;

	FUNC1(skb->data, 0, rx_desc_sz);
	FUNC3(&rx_urb->urb, priv->udev, priv->pipe_in, skb->data,
			  skb_size, rtl8xxxu_rx_complete, skb);
	FUNC2(&rx_urb->urb, &priv->rx_anchor);
	ret = FUNC4(&rx_urb->urb, GFP_ATOMIC);
	if (ret)
		FUNC5(&rx_urb->urb);
	return ret;
}