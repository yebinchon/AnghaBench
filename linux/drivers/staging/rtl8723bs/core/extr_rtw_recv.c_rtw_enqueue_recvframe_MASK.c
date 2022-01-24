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
typedef  union recv_frame {int dummy; } recv_frame ;
struct __queue {int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  sint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (union recv_frame*,struct __queue*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

sint FUNC3(union recv_frame *precvframe, struct __queue *queue)
{
	sint ret;

	/* _spinlock(&pfree_recv_queue->lock); */
	FUNC1(&queue->lock);
	ret = FUNC0(precvframe, queue);
	/* spin_unlock(&pfree_recv_queue->lock); */
	FUNC2(&queue->lock);

	return ret;
}