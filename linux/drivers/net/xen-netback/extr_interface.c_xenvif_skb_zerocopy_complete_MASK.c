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
struct xenvif_queue {int /*<<< orphan*/  dealloc_wq; int /*<<< orphan*/  inflight_packets; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct xenvif_queue *queue)
{
	FUNC0(&queue->inflight_packets);

	/* Wake the dealloc thread _after_ decrementing inflight_packets so
	 * that if kthread_stop() has already been called, the dealloc thread
	 * does not wait forever with nothing to wake it.
	 */
	FUNC1(&queue->dealloc_wq);
}