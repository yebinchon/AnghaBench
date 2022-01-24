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
struct xenvif_queue {scalar_t__ tx_irq; scalar_t__ rx_irq; int /*<<< orphan*/ * dealloc_task; int /*<<< orphan*/ * task; int /*<<< orphan*/  napi; } ;
struct xenvif {unsigned int num_queues; struct xenvif_queue* queues; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,struct xenvif_queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct xenvif*) ; 
 int /*<<< orphan*/  FUNC5 (struct xenvif*) ; 
 int /*<<< orphan*/  FUNC6 (struct xenvif_queue*) ; 

void FUNC7(struct xenvif *vif)
{
	struct xenvif_queue *queue = NULL;
	unsigned int num_queues = vif->num_queues;
	unsigned int queue_index;

	FUNC4(vif);

	for (queue_index = 0; queue_index < num_queues; ++queue_index) {
		queue = &vif->queues[queue_index];

		FUNC1(&queue->napi);

		if (queue->task) {
			FUNC0(queue->task);
			FUNC2(queue->task);
			queue->task = NULL;
		}

		if (queue->dealloc_task) {
			FUNC0(queue->dealloc_task);
			queue->dealloc_task = NULL;
		}

		if (queue->tx_irq) {
			if (queue->tx_irq == queue->rx_irq)
				FUNC3(queue->tx_irq, queue);
			else {
				FUNC3(queue->tx_irq, queue);
				FUNC3(queue->rx_irq, queue);
			}
			queue->tx_irq = 0;
		}

		FUNC6(queue);
	}

	FUNC5(vif);
}