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
struct allegro_dev {int /*<<< orphan*/  v4l2_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  m2m_ctx; } ;
struct allegro_channel {int /*<<< orphan*/  mcu_channel_id; TYPE_1__ fh; struct allegro_dev* dev; } ;

/* Variables and functions */
#define  ALLEGRO_STATE_DRAIN 130 
#define  ALLEGRO_STATE_ENCODING 129 
#define  ALLEGRO_STATE_WAIT_FOR_BUFFER 128 
 int EBUSY ; 
 int /*<<< orphan*/  VB2_BUF_STATE_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct allegro_channel*,struct vb2_v4l2_buffer*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct allegro_channel*) ; 
 int /*<<< orphan*/  FUNC2 (struct allegro_channel*,int const) ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct allegro_channel *channel)
{
	struct allegro_dev *dev = channel->dev;
	struct vb2_v4l2_buffer *dst_buf;

	switch (FUNC1(channel)) {
	case ALLEGRO_STATE_DRAIN:
	case ALLEGRO_STATE_WAIT_FOR_BUFFER:
		return -EBUSY;
	case ALLEGRO_STATE_ENCODING:
		FUNC2(channel, ALLEGRO_STATE_DRAIN);
		break;
	default:
		return 0;
	}

	/* If there are output buffers, they must be encoded */
	if (FUNC5(channel->fh.m2m_ctx) != 0) {
		FUNC3(1, debug,  &dev->v4l2_dev,
			 "channel %d: CMD_STOP: continue encoding src buffers\n",
			 channel->mcu_channel_id);
		return 0;
	}

	/* If there are capture buffers, use it to signal EOS */
	dst_buf = FUNC4(channel->fh.m2m_ctx);
	if (dst_buf) {
		FUNC3(1, debug,  &dev->v4l2_dev,
			 "channel %d: CMD_STOP: signaling EOS\n",
			 channel->mcu_channel_id);
		FUNC0(channel, dst_buf, VB2_BUF_STATE_DONE);
		return 0;
	}

	/*
	 * If there are no capture buffers, we need to wait for the next
	 * buffer to signal EOS.
	 */
	FUNC3(1, debug,  &dev->v4l2_dev,
		 "channel %d: CMD_STOP: wait for CAPTURE buffer to signal EOS\n",
		 channel->mcu_channel_id);
	FUNC2(channel, ALLEGRO_STATE_WAIT_FOR_BUFFER);

	return 0;
}