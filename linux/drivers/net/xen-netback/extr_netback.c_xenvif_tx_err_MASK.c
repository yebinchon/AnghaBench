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
struct TYPE_2__ {scalar_t__ req_cons; } ;
struct xenvif_queue {TYPE_1__ tx; int /*<<< orphan*/  response_lock; } ;
struct xen_netif_tx_request {int dummy; } ;
typedef  scalar_t__ RING_IDX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,struct xen_netif_tx_request*) ; 
 int /*<<< orphan*/  XEN_NETIF_RSP_ERROR ; 
 int /*<<< orphan*/  FUNC1 (struct xenvif_queue*,struct xen_netif_tx_request*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xenvif_queue*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct xenvif_queue *queue,
			  struct xen_netif_tx_request *txp,
			  unsigned int extra_count, RING_IDX end)
{
	RING_IDX cons = queue->tx.req_cons;
	unsigned long flags;

	do {
		FUNC3(&queue->response_lock, flags);
		FUNC1(queue, txp, extra_count, XEN_NETIF_RSP_ERROR);
		FUNC2(queue);
		FUNC4(&queue->response_lock, flags);
		if (cons == end)
			break;
		FUNC0(&queue->tx, cons++, txp);
		extra_count = 0; /* only the first frag can have extras */
	} while (1);
	queue->tx.req_cons = cons;
}