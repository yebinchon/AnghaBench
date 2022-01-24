#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  list; int /*<<< orphan*/ * SCpnt; } ;
struct TYPE_6__ {TYPE_2__* alloc; int /*<<< orphan*/  free; int /*<<< orphan*/  head; int /*<<< orphan*/  queue_lock; } ;
typedef  TYPE_1__ Queue_t ;
typedef  TYPE_2__ QE_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int NR_QE ; 
 int /*<<< orphan*/  QUEUE_MAGIC_FREE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5 (Queue_t *queue)
{
	unsigned int nqueues = NR_QE;
	QE_t *q;

	FUNC4(&queue->queue_lock);
	FUNC0(&queue->head);
	FUNC0(&queue->free);

	/*
	 * If life was easier, then SCpnt would have a
	 * host-available list head, and we wouldn't
	 * need to keep free lists or allocate this
	 * memory.
	 */
	queue->alloc = q = FUNC2(nqueues, sizeof(QE_t), GFP_KERNEL);
	if (q) {
		for (; nqueues; q++, nqueues--) {
			FUNC1(q, QUEUE_MAGIC_FREE);
			q->SCpnt = NULL;
			FUNC3(&q->list, &queue->free);
		}
	}

	return queue->alloc != NULL;
}