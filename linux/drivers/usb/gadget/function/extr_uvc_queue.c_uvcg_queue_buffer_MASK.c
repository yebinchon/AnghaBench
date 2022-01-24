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
struct v4l2_buffer {int dummy; } ;
struct uvc_video_queue {int flags; int /*<<< orphan*/  irqlock; int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int UVC_QUEUE_PAUSED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct v4l2_buffer*) ; 

int FUNC3(struct uvc_video_queue *queue, struct v4l2_buffer *buf)
{
	unsigned long flags;
	int ret;

	ret = FUNC2(&queue->queue, NULL, buf);
	if (ret < 0)
		return ret;

	FUNC0(&queue->irqlock, flags);
	ret = (queue->flags & UVC_QUEUE_PAUSED) != 0;
	queue->flags &= ~UVC_QUEUE_PAUSED;
	FUNC1(&queue->irqlock, flags);
	return ret;
}