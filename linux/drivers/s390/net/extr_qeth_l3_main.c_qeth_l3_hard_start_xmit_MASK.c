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
typedef  size_t u16 ;
struct sk_buff {scalar_t__ protocol; int /*<<< orphan*/  len; } ;
struct qeth_qdio_out_q {int dummy; } ;
struct TYPE_5__ {struct qeth_qdio_out_q** out_qs; } ;
struct TYPE_4__ {scalar_t__ cq; scalar_t__ sniffer; } ;
struct qeth_card {TYPE_2__ qdio; TYPE_1__ options; } ;
struct net_device {int flags; struct qeth_card* ml_priv; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_6__ {int /*<<< orphan*/  pkt_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_AF_IUCV ; 
 int IFF_BROADCAST ; 
 scalar_t__ FUNC0 (struct qeth_card*) ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 scalar_t__ QETH_CQ_ENABLED ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_qdio_out_q*,int /*<<< orphan*/ ) ; 
 scalar_t__ RTN_BROADCAST ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 TYPE_3__* FUNC4 (struct sk_buff*) ; 
 int FUNC5 (struct sk_buff*) ; 
 size_t FUNC6 (struct net_device*,size_t) ; 
 int /*<<< orphan*/  qeth_l3_fill_header ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 
 int FUNC8 (struct qeth_card*,struct sk_buff*,struct qeth_qdio_out_q*,int) ; 
 int FUNC9 (struct qeth_card*,struct sk_buff*,struct qeth_qdio_out_q*,int,int /*<<< orphan*/ ) ; 
 size_t FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  tx_dropped ; 

__attribute__((used)) static netdev_tx_t FUNC12(struct sk_buff *skb,
					   struct net_device *dev)
{
	struct qeth_card *card = dev->ml_priv;
	u16 txq = FUNC10(skb);
	int ipv = FUNC5(skb);
	struct qeth_qdio_out_q *queue;
	int rc;

	if (!FUNC11(skb))
		FUNC4(skb)->pkt_len = skb->len;
	if (FUNC0(card)) {
		queue = card->qdio.out_qs[FUNC6(dev, txq)];

		if (card->options.sniffer)
			goto tx_drop;
		if ((card->options.cq != QETH_CQ_ENABLED && !ipv) ||
		    (card->options.cq == QETH_CQ_ENABLED &&
		     skb->protocol != FUNC2(ETH_P_AF_IUCV)))
			goto tx_drop;
	} else {
		queue = card->qdio.out_qs[txq];
	}

	if (!(dev->flags & IFF_BROADCAST) &&
	    FUNC7(skb) == RTN_BROADCAST)
		goto tx_drop;

	if (ipv == 4 || FUNC0(card))
		rc = FUNC8(card, skb, queue, ipv);
	else
		rc = FUNC9(card, skb, queue, ipv, qeth_l3_fill_header);

	if (!rc)
		return NETDEV_TX_OK;

tx_drop:
	FUNC1(queue, tx_dropped);
	FUNC3(skb);
	return NETDEV_TX_OK;
}