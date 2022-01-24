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
struct TYPE_3__ {size_t size; int /*<<< orphan*/  data; } ;
struct ec_params_lightbar {TYPE_1__ set_program; int /*<<< orphan*/  cmd; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cros_ec_dev {TYPE_2__* ec_dev; } ;
struct cros_ec_command {size_t outsize; scalar_t__ result; scalar_t__ data; } ;
typedef  int ssize_t ;
struct TYPE_4__ {scalar_t__ max_request; } ;

/* Variables and functions */
 int /*<<< orphan*/  EC_LB_PROG_LEN ; 
 scalar_t__ EC_RES_SUCCESS ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  LIGHTBAR_CMD_SET_PROGRAM ; 
 struct cros_ec_command* FUNC0 (struct cros_ec_dev*) ; 
 int FUNC1 (TYPE_2__*,struct cros_ec_command*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct cros_ec_command*) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,size_t) ; 
 int FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct cros_ec_dev* FUNC8 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev, struct device_attribute *attr,
			     const char *buf, size_t count)
{
	int extra_bytes, max_size, ret;
	struct ec_params_lightbar *param;
	struct cros_ec_command *msg;
	struct cros_ec_dev *ec = FUNC8(dev);

	/*
	 * We might need to reject the program for size reasons. The EC
	 * enforces a maximum program size, but we also don't want to try
	 * and send a program that is too big for the protocol. In order
	 * to ensure the latter, we also need to ensure we have extra bytes
	 * to represent the rest of the packet.
	 */
	extra_bytes = sizeof(*param) - sizeof(param->set_program.data);
	max_size = FUNC7(EC_LB_PROG_LEN, ec->ec_dev->max_request - extra_bytes);
	if (count > max_size) {
		FUNC2(dev, "Program is %u bytes, too long to send (max: %u)",
			(unsigned int)count, max_size);

		return -EINVAL;
	}

	msg = FUNC0(ec);
	if (!msg)
		return -ENOMEM;

	ret = FUNC5();
	if (ret)
		goto exit;

	FUNC3(dev, "Copying %zu byte program to EC", count);

	param = (struct ec_params_lightbar *)msg->data;
	param->cmd = LIGHTBAR_CMD_SET_PROGRAM;

	param->set_program.size = count;
	FUNC6(param->set_program.data, buf, count);

	/*
	 * We need to set the message size manually or else it will use
	 * EC_LB_PROG_LEN. This might be too long, and the program
	 * is unlikely to use all of the space.
	 */
	msg->outsize = count + extra_bytes;

	ret = FUNC1(ec->ec_dev, msg);
	if (ret < 0)
		goto exit;
	if (msg->result != EC_RES_SUCCESS) {
		ret = -EINVAL;
		goto exit;
	}

	ret = count;
exit:
	FUNC4(msg);

	return ret;
}