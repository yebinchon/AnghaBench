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
struct TYPE_2__ {int /*<<< orphan*/  type; } ;
struct mcu_msg_create_channel_response {int /*<<< orphan*/  rec_buffers_size; int /*<<< orphan*/  rec_buffers_count; int /*<<< orphan*/  int_buffers_size; int /*<<< orphan*/  int_buffers_count; int /*<<< orphan*/  channel_id; int /*<<< orphan*/  error_code; int /*<<< orphan*/  user_id; TYPE_1__ header; } ;
struct allegro_dev {int /*<<< orphan*/  v4l2_dev; } ;
struct allegro_channel {int error; int /*<<< orphan*/  completion; int /*<<< orphan*/  mcu_channel_id; int /*<<< orphan*/  user_id; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 scalar_t__ FUNC0 (struct allegro_channel*) ; 
 struct allegro_channel* FUNC1 (struct allegro_dev*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct allegro_channel*) ; 
 int FUNC3 (struct allegro_channel*) ; 
 int FUNC4 (struct allegro_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct allegro_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(struct allegro_dev *dev,
			      struct mcu_msg_create_channel_response *msg)
{
	struct allegro_channel *channel;
	int err = 0;

	channel = FUNC1(dev, msg->user_id);
	if (FUNC0(channel)) {
		FUNC10(&dev->v4l2_dev,
			  "received %s for unknown user %d\n",
			  FUNC7(msg->header.type),
			  msg->user_id);
		return -EINVAL;
	}

	if (msg->error_code) {
		FUNC9(&dev->v4l2_dev,
			 "user %d: mcu failed to create channel: error %x\n",
			 channel->user_id, msg->error_code);
		err = -EIO;
		goto out;
	}

	channel->mcu_channel_id = msg->channel_id;
	FUNC8(1, debug, &dev->v4l2_dev,
		 "user %d: channel has channel id %d\n",
		 channel->user_id, channel->mcu_channel_id);

	FUNC8(1, debug, &dev->v4l2_dev,
		 "channel %d: intermediate buffers: %d x %d bytes\n",
		 channel->mcu_channel_id,
		 msg->int_buffers_count, msg->int_buffers_size);
	err = FUNC4(channel, msg->int_buffers_count,
					    msg->int_buffers_size);
	if (err) {
		FUNC9(&dev->v4l2_dev,
			 "channel %d: failed to allocate intermediate buffers\n",
			 channel->mcu_channel_id);
		goto out;
	}
	err = FUNC2(channel);
	if (err)
		goto out;

	FUNC8(1, debug, &dev->v4l2_dev,
		 "channel %d: reference buffers: %d x %d bytes\n",
		 channel->mcu_channel_id,
		 msg->rec_buffers_count, msg->rec_buffers_size);
	err = FUNC5(channel, msg->rec_buffers_count,
					 msg->rec_buffers_size);
	if (err) {
		FUNC9(&dev->v4l2_dev,
			 "channel %d: failed to allocate reference buffers\n",
			 channel->mcu_channel_id);
		goto out;
	}
	err = FUNC3(channel);
	if (err)
		goto out;

out:
	channel->error = err;
	FUNC6(&channel->completion);

	/* Handled successfully, error is passed via channel->error */
	return 0;
}