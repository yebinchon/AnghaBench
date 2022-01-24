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
struct xenvif_queue {int /*<<< orphan*/  rx; int /*<<< orphan*/  vif; int /*<<< orphan*/  tx; } ;
struct xen_netif_tx_sring {int dummy; } ;
typedef  struct xen_netif_tx_sring xen_netif_rx_sring ;
typedef  int /*<<< orphan*/  grant_ref_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct xen_netif_tx_sring*,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  XEN_PAGE_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xenvif_queue*) ; 

int FUNC4(struct xenvif_queue *queue,
				   grant_ref_t tx_ring_ref,
				   grant_ref_t rx_ring_ref)
{
	void *addr;
	struct xen_netif_tx_sring *txs;
	struct xen_netif_rx_sring *rxs;

	int err = -ENOMEM;

	err = FUNC1(FUNC2(queue->vif),
				     &tx_ring_ref, 1, &addr);
	if (err)
		goto err;

	txs = (struct xen_netif_tx_sring *)addr;
	FUNC0(&queue->tx, txs, XEN_PAGE_SIZE);

	err = FUNC1(FUNC2(queue->vif),
				     &rx_ring_ref, 1, &addr);
	if (err)
		goto err;

	rxs = (struct xen_netif_rx_sring *)addr;
	FUNC0(&queue->rx, rxs, XEN_PAGE_SIZE);

	return 0;

err:
	FUNC3(queue);
	return err;
}