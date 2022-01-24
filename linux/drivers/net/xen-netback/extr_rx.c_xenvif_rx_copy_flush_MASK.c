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
struct TYPE_2__ {unsigned int num; int /*<<< orphan*/  completed; int /*<<< orphan*/ * idx; struct gnttab_copy* op; } ;
struct xenvif_queue {TYPE_1__ rx_copy; int /*<<< orphan*/  rx_irq; int /*<<< orphan*/  rx; } ;
struct xen_netif_rx_response {scalar_t__ status; } ;
struct gnttab_copy {scalar_t__ status; } ;

/* Variables and functions */
 scalar_t__ GNTST_okay ; 
 struct xen_netif_rx_response* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gnttab_copy*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct xenvif_queue *queue)
{
	unsigned int i;
	int notify;

	FUNC3(queue->rx_copy.op, queue->rx_copy.num);

	for (i = 0; i < queue->rx_copy.num; i++) {
		struct gnttab_copy *op;

		op = &queue->rx_copy.op[i];

		/* If the copy failed, overwrite the status field in
		 * the corresponding response.
		 */
		if (FUNC5(op->status != GNTST_okay)) {
			struct xen_netif_rx_response *rsp;

			rsp = FUNC0(&queue->rx,
						queue->rx_copy.idx[i]);
			rsp->status = op->status;
		}
	}

	queue->rx_copy.num = 0;

	/* Push responses for all completed packets. */
	FUNC1(&queue->rx, notify);
	if (notify)
		FUNC4(queue->rx_irq);

	FUNC2(queue->rx_copy.completed);
}