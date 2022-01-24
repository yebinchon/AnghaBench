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
struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_queue {scalar_t__ type; } ;
struct allegro_dev {int /*<<< orphan*/  v4l2_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  m2m_ctx; } ;
struct allegro_channel {TYPE_1__ fh; struct allegro_dev* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALLEGRO_STATE_STOPPED ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  VB2_BUF_STATE_ERROR ; 
 int /*<<< orphan*/  FUNC1 (struct allegro_channel*) ; 
 int /*<<< orphan*/  FUNC2 (struct allegro_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct vb2_v4l2_buffer*,int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC5 (int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC6 (int /*<<< orphan*/ ) ; 
 struct allegro_channel* FUNC7 (struct vb2_queue*) ; 

__attribute__((used)) static void FUNC8(struct vb2_queue *q)
{
	struct allegro_channel *channel = FUNC7(q);
	struct allegro_dev *dev = channel->dev;
	struct vb2_v4l2_buffer *buffer;

	FUNC3(2, debug, &dev->v4l2_dev,
		 "%s: stop streaming\n",
		 FUNC0(q->type) ? "output" : "capture");

	if (FUNC0(q->type)) {
		FUNC2(channel, ALLEGRO_STATE_STOPPED);
		while ((buffer = FUNC6(channel->fh.m2m_ctx)))
			FUNC4(buffer, VB2_BUF_STATE_ERROR);
	} else if (q->type == V4L2_BUF_TYPE_VIDEO_CAPTURE) {
		FUNC1(channel);
		while ((buffer = FUNC5(channel->fh.m2m_ctx)))
			FUNC4(buffer, VB2_BUF_STATE_ERROR);
	}
}