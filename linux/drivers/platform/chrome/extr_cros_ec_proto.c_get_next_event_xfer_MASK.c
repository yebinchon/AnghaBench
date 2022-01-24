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
typedef  int /*<<< orphan*/  uint32_t ;
struct cros_ec_device {int event_size; int /*<<< orphan*/  event_data; } ;
struct cros_ec_command {int version; int /*<<< orphan*/  data; scalar_t__ outsize; int /*<<< orphan*/  insize; int /*<<< orphan*/  command; } ;

/* Variables and functions */
 int /*<<< orphan*/  EC_CMD_GET_NEXT_EVENT ; 
 int FUNC0 (struct cros_ec_device*,struct cros_ec_command*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct cros_ec_device *ec_dev,
			       struct cros_ec_command *msg,
			       int version, uint32_t size)
{
	int ret;

	msg->version = version;
	msg->command = EC_CMD_GET_NEXT_EVENT;
	msg->insize = size;
	msg->outsize = 0;

	ret = FUNC0(ec_dev, msg);
	if (ret > 0) {
		ec_dev->event_size = ret - 1;
		FUNC1(&ec_dev->event_data, msg->data, ret);
	}

	return ret;
}