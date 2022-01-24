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
struct list_head {int dummy; } ;
struct __queue {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 struct list_head* FUNC0 (struct __queue*) ; 
 struct list_head* FUNC1 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC2 (union recv_frame*,struct __queue*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct __queue *pframequeue,  struct __queue *pfree_recv_queue)
{
	union	recv_frame	*precvframe;
	struct list_head	*plist, *phead;

	FUNC3(&pframequeue->lock);

	phead = FUNC0(pframequeue);
	plist = FUNC1(phead);

	while (phead != plist) {
		precvframe = (union recv_frame *)plist;

		plist = FUNC1(plist);

		FUNC2(precvframe, pfree_recv_queue);
	}

	FUNC4(&pframequeue->lock);
}