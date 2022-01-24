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
struct sk_buff {scalar_t__ protocol; scalar_t__ cb; } ;
struct TYPE_3__ {unsigned int rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_dropped; } ;
struct lcs_card {scalar_t__ state; scalar_t__ (* lan_type_trans ) (struct sk_buff*,TYPE_2__*) ;scalar_t__ pkt_seq; TYPE_1__ stats; TYPE_2__* dev; } ;
typedef  scalar_t__ __u32 ;
struct TYPE_4__ {int /*<<< orphan*/  name; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ DEV_STATE_UP ; 
 int /*<<< orphan*/  ETH_P_802_2 ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 struct sk_buff* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,char*,unsigned int) ; 
 scalar_t__ FUNC6 (struct sk_buff*,TYPE_2__*) ; 
 int /*<<< orphan*/  trace ; 

__attribute__((used)) static void
FUNC7(struct lcs_card *card, char *skb_data, unsigned int skb_len)
{
	struct sk_buff *skb;

	FUNC0(5, trace, "getskb");
	if (card->dev == NULL ||
	    card->state != DEV_STATE_UP)
		/* The card isn't up. Ignore the packet. */
		return;

	skb = FUNC1(skb_len);
	if (skb == NULL) {
		FUNC2(&card->dev->dev,
			" Allocating a socket buffer to interface %s failed\n",
			  card->dev->name);
		card->stats.rx_dropped++;
		return;
	}
	FUNC5(skb, skb_data, skb_len);
	skb->protocol =	card->lan_type_trans(skb, card->dev);
	card->stats.rx_bytes += skb_len;
	card->stats.rx_packets++;
	if (skb->protocol == FUNC3(ETH_P_802_2))
		*((__u32 *)skb->cb) = ++card->pkt_seq;
	FUNC4(skb);
}