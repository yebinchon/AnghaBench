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
struct TYPE_2__ {int length; int /*<<< orphan*/  type; } ;
struct mcu_msg_destroy_channel {int /*<<< orphan*/  channel_id; TYPE_1__ header; } ;
struct allegro_dev {int /*<<< orphan*/  mbox_command; } ;
struct allegro_channel {int /*<<< orphan*/  mcu_channel_id; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  MCU_MSG_TYPE_DESTROY_CHANNEL ; 
 int /*<<< orphan*/  FUNC0 (struct allegro_dev*,int /*<<< orphan*/ *,struct mcu_msg_destroy_channel*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct allegro_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct mcu_msg_destroy_channel*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct allegro_dev *dev,
					    struct allegro_channel *channel)
{
	struct mcu_msg_destroy_channel msg;

	FUNC2(&msg, 0, sizeof(msg));

	msg.header.type = MCU_MSG_TYPE_DESTROY_CHANNEL;
	msg.header.length = sizeof(msg) - sizeof(msg.header);

	msg.channel_id = channel->mcu_channel_id;

	FUNC0(dev, &dev->mbox_command, &msg, sizeof(msg));
	FUNC1(dev);

	return 0;
}