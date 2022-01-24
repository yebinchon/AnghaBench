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
struct cros_ec_device {int max_response; } ;
struct TYPE_4__ {int size; int /*<<< orphan*/  data; } ;
struct cros_ec_debugfs {TYPE_1__* ec; TYPE_2__ panicinfo_blob; int /*<<< orphan*/  dir; } ;
struct cros_ec_command {int insize; int /*<<< orphan*/  data; int /*<<< orphan*/  command; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; struct cros_ec_device* ec_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EC_CMD_GET_PANIC_INFO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int S_IFREG ; 
 int FUNC0 (struct cros_ec_device*,struct cros_ec_command*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct cros_ec_command*) ; 
 struct cros_ec_command* FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct cros_ec_debugfs *debug_info)
{
	struct cros_ec_device *ec_dev = debug_info->ec->ec_dev;
	int ret;
	struct cros_ec_command *msg;
	int insize;

	insize = ec_dev->max_response;

	msg = FUNC3(debug_info->ec->dev,
			sizeof(*msg) + insize, GFP_KERNEL);
	if (!msg)
		return -ENOMEM;

	msg->command = EC_CMD_GET_PANIC_INFO;
	msg->insize = insize;

	ret = FUNC0(ec_dev, msg);
	if (ret < 0) {
		ret = 0;
		goto free;
	}

	/* No panic data */
	if (ret == 0)
		goto free;

	debug_info->panicinfo_blob.data = msg->data;
	debug_info->panicinfo_blob.size = ret;

	FUNC1("panicinfo", S_IFREG | 0444, debug_info->dir,
			    &debug_info->panicinfo_blob);

	return 0;

free:
	FUNC2(debug_info->ec->dev, msg);
	return ret;
}