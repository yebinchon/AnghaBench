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
typedef  int u32 ;
struct sk_buff {unsigned int len; int /*<<< orphan*/  protocol; struct net_device* dev; } ;
struct TYPE_4__ {unsigned int rx_bytes; int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  rx_packets; } ;
struct net_device {TYPE_2__ stats; int /*<<< orphan*/  dev_addr; } ;
struct TYPE_3__ {scalar_t__ ch_id; } ;
struct net_dev_context {struct net_device* dev; scalar_t__ is_mamac; TYPE_1__ rx; } ;
struct mbo {char* virt_address; int processed_length; scalar_t__ hdm_channel_id; int /*<<< orphan*/  ifp; } ;

/* Variables and functions */
 int EIO ; 
 int ETH_ALEN ; 
 scalar_t__ MDP_HDR_LEN ; 
 scalar_t__ MEP_HDR_LEN ; 
 scalar_t__ NET_RX_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 struct sk_buff* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net_dev_context* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mbo*) ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,...) ; 

__attribute__((used)) static int FUNC12(struct mbo *mbo)
{
	const u32 zero = 0;
	struct net_dev_context *nd;
	char *buf = mbo->virt_address;
	u32 len = mbo->processed_length;
	struct sk_buff *skb;
	struct net_device *dev;
	unsigned int skb_len;
	int ret = 0;

	nd = FUNC5(mbo->ifp);
	if (!nd)
		return -EIO;

	if (nd->rx.ch_id != mbo->hdm_channel_id) {
		ret = -EIO;
		goto put_nd;
	}

	dev = nd->dev;

	if (nd->is_mamac) {
		if (!FUNC8(buf, len)) {
			ret = -EIO;
			goto put_nd;
		}

		skb = FUNC1(len - MDP_HDR_LEN + 2 * ETH_ALEN + 2);
	} else {
		if (!FUNC0(buf, len)) {
			ret = -EIO;
			goto put_nd;
		}

		skb = FUNC1(len - MEP_HDR_LEN);
	}

	if (!skb) {
		dev->stats.rx_dropped++;
		FUNC9("drop packet: no memory for skb\n");
		goto out;
	}

	skb->dev = dev;

	if (nd->is_mamac) {
		/* dest */
		FUNC4(FUNC10(skb, ETH_ALEN), dev->dev_addr);

		/* src */
		FUNC11(skb, &zero, 4);
		FUNC11(skb, buf + 5, 2);

		/* eth type */
		FUNC11(skb, buf + 10, 2);

		buf += MDP_HDR_LEN;
		len -= MDP_HDR_LEN;
	} else {
		buf += MEP_HDR_LEN;
		len -= MEP_HDR_LEN;
	}

	FUNC11(skb, buf, len);
	skb->protocol = FUNC3(skb, dev);
	skb_len = skb->len;
	if (FUNC7(skb) == NET_RX_SUCCESS) {
		dev->stats.rx_packets++;
		dev->stats.rx_bytes += skb_len;
	} else {
		dev->stats.rx_dropped++;
	}

out:
	FUNC6(mbo);

put_nd:
	FUNC2(nd->dev);
	return ret;
}