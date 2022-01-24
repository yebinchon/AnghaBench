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
struct recv_frame {int dummy; } ;
struct __queue {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 struct recv_frame* FUNC0 (struct __queue*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

struct recv_frame *FUNC3(struct __queue *pfree_recv_queue)
{
	struct recv_frame  *precvframe;

	FUNC1(&pfree_recv_queue->lock);

	precvframe = FUNC0(pfree_recv_queue);

	FUNC2(&pfree_recv_queue->lock);

	return precvframe;
}