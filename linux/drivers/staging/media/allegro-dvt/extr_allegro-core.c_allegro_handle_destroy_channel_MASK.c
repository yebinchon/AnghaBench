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
struct mcu_msg_destroy_channel_response {int /*<<< orphan*/  channel_id; TYPE_1__ header; } ;
struct allegro_dev {int /*<<< orphan*/  v4l2_dev; } ;
struct allegro_channel {int /*<<< orphan*/  completion; int /*<<< orphan*/  mcu_channel_id; int /*<<< orphan*/  user_id; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct allegro_channel*) ; 
 struct allegro_channel* FUNC1 (struct allegro_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct allegro_dev *dev,
			       struct mcu_msg_destroy_channel_response *msg)
{
	struct allegro_channel *channel;

	channel = FUNC1(dev, msg->channel_id);
	if (FUNC0(channel)) {
		FUNC5(&dev->v4l2_dev,
			 "received %s for unknown channel %d\n",
			 FUNC3(msg->header.type),
			 msg->channel_id);
		return -EINVAL;
	}

	FUNC4(2, debug, &dev->v4l2_dev,
		 "user %d: vcu destroyed channel %d\n",
		 channel->user_id, channel->mcu_channel_id);
	FUNC2(&channel->completion);

	return 0;
}