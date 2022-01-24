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
struct recv_frame {int /*<<< orphan*/  list; int /*<<< orphan*/ * pkt; } ;
struct __queue {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int _FAIL ; 
 int _SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct __queue*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct recv_frame *precvframe,
		       struct __queue *pfree_recv_queue)
{
	if (!precvframe)
		return _FAIL;
	if (precvframe->pkt) {
		FUNC0(precvframe->pkt);/* free skb by driver */
		precvframe->pkt = NULL;
	}

	FUNC4(&pfree_recv_queue->lock);

	FUNC3(&precvframe->list);

	FUNC2(&precvframe->list, FUNC1(pfree_recv_queue));

	FUNC5(&pfree_recv_queue->lock);

	return _SUCCESS;
}