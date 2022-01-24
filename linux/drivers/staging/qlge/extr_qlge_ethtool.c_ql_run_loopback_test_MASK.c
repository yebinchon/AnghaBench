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
struct sk_buff {scalar_t__ queue_mapping; } ;
struct ql_adapter {int /*<<< orphan*/  lb_count; int /*<<< orphan*/ * rx_ring; int /*<<< orphan*/  ndev; } ;
typedef  scalar_t__ netdev_tx_t ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int EPIPE ; 
 scalar_t__ NETDEV_TX_OK ; 
 unsigned int SMALL_BUF_MAP_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,unsigned int) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,unsigned int) ; 

__attribute__((used)) static int FUNC8(struct ql_adapter *qdev)
{
	int i;
	netdev_tx_t rc;
	struct sk_buff *skb;
	unsigned int size = SMALL_BUF_MAP_SIZE;

	for (i = 0; i < 64; i++) {
		skb = FUNC3(qdev->ndev, size);
		if (!skb)
			return -ENOMEM;

		skb->queue_mapping = 0;
		FUNC7(skb, size);
		FUNC5(skb, size);
		rc = FUNC6(skb, qdev->ndev);
		if (rc != NETDEV_TX_OK)
			return -EPIPE;
		FUNC0(&qdev->lb_count);
	}
	/* Give queue time to settle before testing results. */
	FUNC2(2);
	FUNC4(&qdev->rx_ring[0], 128);
	return FUNC1(&qdev->lb_count) ? -EIO : 0;
}