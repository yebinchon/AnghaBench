#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  type; } ;
struct uvc_video_queue {int /*<<< orphan*/  irqlock; int /*<<< orphan*/  flags; int /*<<< orphan*/  irqqueue; TYPE_1__ queue; scalar_t__ buf_used; scalar_t__ sequence; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UVC_QUEUE_DISCONNECTED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

int FUNC5(struct uvc_video_queue *queue, int enable)
{
	unsigned long flags;
	int ret = 0;

	if (enable) {
		ret = FUNC4(&queue->queue, queue->queue.type);
		if (ret < 0)
			return ret;

		queue->sequence = 0;
		queue->buf_used = 0;
	} else {
		ret = FUNC3(&queue->queue, queue->queue.type);
		if (ret < 0)
			return ret;

		FUNC1(&queue->irqlock, flags);
		FUNC0(&queue->irqqueue);

		/*
		 * FIXME: We need to clear the DISCONNECTED flag to ensure that
		 * applications will be able to queue buffers for the next
		 * streaming run. However, clearing it here doesn't guarantee
		 * that the device will be reconnected in the meantime.
		 */
		queue->flags &= ~UVC_QUEUE_DISCONNECTED;
		FUNC2(&queue->irqlock, flags);
	}

	return ret;
}