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
struct vb2_v4l2_buffer {int /*<<< orphan*/  flags; } ;
struct v4l2_event {int /*<<< orphan*/  type; } ;
struct allegro_channel {int /*<<< orphan*/  fh; } ;
typedef  enum vb2_buffer_state { ____Placeholder_vb2_buffer_state } vb2_buffer_state ;

/* Variables and functions */
 int /*<<< orphan*/  ALLEGRO_STATE_STOPPED ; 
 int /*<<< orphan*/  V4L2_BUF_FLAG_LAST ; 
 int /*<<< orphan*/  V4L2_EVENT_EOS ; 
 scalar_t__ FUNC0 (struct allegro_channel*) ; 
 int /*<<< orphan*/  FUNC1 (struct allegro_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct v4l2_event const*) ; 
 int /*<<< orphan*/  FUNC3 (struct vb2_v4l2_buffer*,int) ; 

__attribute__((used)) static void FUNC4(struct allegro_channel *channel,
				     struct vb2_v4l2_buffer *buf,
				     enum vb2_buffer_state state)
{
	const struct v4l2_event eos_event = {
		.type = V4L2_EVENT_EOS
	};

	if (FUNC0(channel)) {
		buf->flags |= V4L2_BUF_FLAG_LAST;
		FUNC2(&channel->fh, &eos_event);

		FUNC1(channel, ALLEGRO_STATE_STOPPED);
	}

	FUNC3(buf, state);
}