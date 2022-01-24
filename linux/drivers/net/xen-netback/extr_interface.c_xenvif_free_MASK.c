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
struct xenvif_queue {int dummy; } ;
struct xenvif {unsigned int num_queues; int /*<<< orphan*/  dev; struct xenvif_queue* queues; } ;

/* Variables and functions */
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xenvif_queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct xenvif_queue*) ; 

void FUNC5(struct xenvif *vif)
{
	struct xenvif_queue *queues = vif->queues;
	unsigned int num_queues = vif->num_queues;
	unsigned int queue_index;

	FUNC2(vif->dev);
	FUNC0(vif->dev);

	for (queue_index = 0; queue_index < num_queues; ++queue_index)
		FUNC4(&queues[queue_index]);
	FUNC3(queues);

	FUNC1(THIS_MODULE);
}