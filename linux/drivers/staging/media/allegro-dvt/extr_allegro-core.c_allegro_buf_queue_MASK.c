#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_buffer {TYPE_2__* vb2_queue; } ;
struct TYPE_3__ {int /*<<< orphan*/  m2m_ctx; } ;
struct allegro_channel {TYPE_1__ fh; } ;
struct TYPE_4__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ ALLEGRO_STATE_WAIT_FOR_BUFFER ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  VB2_BUF_STATE_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct allegro_channel*,struct vb2_v4l2_buffer*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct allegro_channel*) ; 
 struct vb2_v4l2_buffer* FUNC2 (struct vb2_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct vb2_v4l2_buffer*) ; 
 struct allegro_channel* FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC5(struct vb2_buffer *vb)
{
	struct allegro_channel *channel = FUNC4(vb->vb2_queue);
	struct vb2_v4l2_buffer *vbuf = FUNC2(vb);

	if (FUNC1(channel) == ALLEGRO_STATE_WAIT_FOR_BUFFER &&
	    vb->vb2_queue->type == V4L2_BUF_TYPE_VIDEO_CAPTURE) {
		FUNC0(channel, vbuf, VB2_BUF_STATE_DONE);
		return;
	}

	FUNC3(channel->fh.m2m_ctx, vbuf);
}