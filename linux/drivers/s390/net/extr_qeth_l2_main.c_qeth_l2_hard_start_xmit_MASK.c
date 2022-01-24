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
typedef  size_t u16 ;
struct sk_buff {int /*<<< orphan*/  len; } ;
struct qeth_qdio_out_q {int dummy; } ;
struct TYPE_3__ {struct qeth_qdio_out_q** out_qs; } ;
struct qeth_card {TYPE_1__ qdio; } ;
struct net_device {struct qeth_card* ml_priv; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_4__ {int /*<<< orphan*/  pkt_len; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct qeth_card*) ; 
 scalar_t__ FUNC1 (struct qeth_card*) ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC2 (struct qeth_qdio_out_q*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 TYPE_2__* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 size_t FUNC6 (struct net_device*,size_t) ; 
 int /*<<< orphan*/  qeth_l2_fill_header ; 
 int FUNC7 (struct qeth_card*,struct sk_buff*,struct qeth_qdio_out_q*) ; 
 int FUNC8 (struct qeth_card*,struct sk_buff*,struct qeth_qdio_out_q*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  tx_dropped ; 

__attribute__((used)) static netdev_tx_t FUNC11(struct sk_buff *skb,
					   struct net_device *dev)
{
	struct qeth_card *card = dev->ml_priv;
	u16 txq = FUNC9(skb);
	struct qeth_qdio_out_q *queue;
	int rc;

	if (!FUNC10(skb))
		FUNC4(skb)->pkt_len = skb->len;
	if (FUNC0(card))
		txq = FUNC6(dev, txq);
	queue = card->qdio.out_qs[txq];

	if (FUNC1(card))
		rc = FUNC7(card, skb, queue);
	else
		rc = FUNC8(card, skb, queue, FUNC5(skb),
			       qeth_l2_fill_header);

	if (!rc)
		return NETDEV_TX_OK;

	FUNC2(queue, tx_dropped);
	FUNC3(skb);
	return NETDEV_TX_OK;
}