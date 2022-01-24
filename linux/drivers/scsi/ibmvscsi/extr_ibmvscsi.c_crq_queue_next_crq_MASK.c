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
struct viosrp_crq {scalar_t__ valid; } ;
struct crq_queue {size_t cur; size_t size; int /*<<< orphan*/  lock; struct viosrp_crq* msgs; } ;

/* Variables and functions */
 scalar_t__ VIOSRP_CRQ_FREE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct viosrp_crq *FUNC3(struct crq_queue *queue)
{
	struct viosrp_crq *crq;
	unsigned long flags;

	FUNC1(&queue->lock, flags);
	crq = &queue->msgs[queue->cur];
	if (crq->valid != VIOSRP_CRQ_FREE) {
		if (++queue->cur == queue->size)
			queue->cur = 0;

		/* Ensure the read of the valid bit occurs before reading any
		 * other bits of the CRQ entry
		 */
		FUNC0();
	} else
		crq = NULL;
	FUNC2(&queue->lock, flags);

	return crq;
}