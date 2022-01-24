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
typedef  scalar_t__ u16 ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  protocol; struct net_device* dev; scalar_t__ data; } ;
struct TYPE_2__ {int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_dropped; } ;
struct netiucv_priv {TYPE_1__ stats; } ;
struct net_device {int dummy; } ;
struct ll_header {scalar_t__ next; } ;
struct iucv_connection {struct net_device* netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_NONE ; 
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,scalar_t__,scalar_t__) ; 
 scalar_t__ NETIUCV_HDRLEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  data ; 
 struct sk_buff* FUNC3 (scalar_t__) ; 
 struct netiucv_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 scalar_t__ FUNC10 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC11(struct iucv_connection *conn,
			       struct sk_buff *pskb)
{
	struct net_device     *dev = conn->netdev;
	struct netiucv_priv   *privptr = FUNC4(dev);
	u16 offset = 0;

	FUNC8(pskb, NETIUCV_HDRLEN);
	pskb->dev = dev;
	pskb->ip_summed = CHECKSUM_NONE;
	pskb->protocol = FUNC2(ETH_P_IP);

	while (1) {
		struct sk_buff *skb;
		struct ll_header *header = (struct ll_header *) pskb->data;

		if (!header->next)
			break;

		FUNC7(pskb, NETIUCV_HDRLEN);
		header->next -= offset;
		offset += header->next;
		header->next -= NETIUCV_HDRLEN;
		if (FUNC10(pskb) < header->next) {
			FUNC1(data, 2, "Illegal next field: %d > %d\n",
				header->next, FUNC10(pskb));
			return;
		}
		FUNC8(pskb, header->next);
		FUNC9(pskb);
		skb = FUNC3(pskb->len);
		if (!skb) {
			FUNC0(data, 2,
				"Out of memory in netiucv_unpack_skb\n");
			privptr->stats.rx_dropped++;
			return;
		}
		FUNC6(pskb, FUNC8(skb, pskb->len),
					  pskb->len);
		FUNC9(skb);
		skb->dev = pskb->dev;
		skb->protocol = pskb->protocol;
		pskb->ip_summed = CHECKSUM_UNNECESSARY;
		privptr->stats.rx_packets++;
		privptr->stats.rx_bytes += skb->len;
		/*
		 * Since receiving is always initiated from a tasklet (in iucv.c),
		 * we must use netif_rx_ni() instead of netif_rx()
		 */
		FUNC5(skb);
		FUNC7(pskb, header->next);
		FUNC8(pskb, NETIUCV_HDRLEN);
	}
}