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
struct xenvif_queue {scalar_t__ tx_irq; scalar_t__ rx_irq; int /*<<< orphan*/  napi; } ;
struct xenvif {unsigned int num_queues; struct xenvif_queue* queues; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct xenvif_queue*) ; 

__attribute__((used)) static void FUNC3(struct xenvif *vif)
{
	struct xenvif_queue *queue = NULL;
	unsigned int num_queues = vif->num_queues;
	unsigned int queue_index;

	for (queue_index = 0; queue_index < num_queues; ++queue_index) {
		queue = &vif->queues[queue_index];
		FUNC1(&queue->napi);
		FUNC0(queue->tx_irq);
		if (queue->tx_irq != queue->rx_irq)
			FUNC0(queue->rx_irq);
		FUNC2(queue);
	}
}