#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {struct sk_buff_head* completed; } ;
struct xenvif_queue {TYPE_1__ rx_copy; } ;
struct sk_buff_head {int dummy; } ;

/* Variables and functions */
 unsigned int RX_BATCH_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct xenvif_queue*) ; 
 scalar_t__ FUNC2 (struct xenvif_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct xenvif_queue*) ; 

void FUNC4(struct xenvif_queue *queue)
{
	struct sk_buff_head completed_skbs;
	unsigned int work_done = 0;

	FUNC0(&completed_skbs);
	queue->rx_copy.completed = &completed_skbs;

	while (FUNC2(queue) &&
	       work_done < RX_BATCH_SIZE) {
		FUNC3(queue);
		work_done++;
	}

	/* Flush any pending copies and complete all skbs. */
	FUNC1(queue);
}