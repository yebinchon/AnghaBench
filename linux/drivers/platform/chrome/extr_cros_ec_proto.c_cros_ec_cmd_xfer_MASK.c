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
struct cros_ec_device {scalar_t__ proto_version; scalar_t__ max_response; scalar_t__ max_request; scalar_t__ max_passthru; int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;
struct cros_ec_command {scalar_t__ insize; scalar_t__ command; scalar_t__ outsize; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ EC_PROTO_VERSION_UNKNOWN ; 
 int EMSGSIZE ; 
 int FUNC1 (struct cros_ec_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct cros_ec_device*,struct cros_ec_command*) ; 

int FUNC7(struct cros_ec_device *ec_dev,
		     struct cros_ec_command *msg)
{
	int ret;

	FUNC4(&ec_dev->lock);
	if (ec_dev->proto_version == EC_PROTO_VERSION_UNKNOWN) {
		ret = FUNC1(ec_dev);
		if (ret) {
			FUNC3(ec_dev->dev,
				"EC version unknown and query failed; aborting command\n");
			FUNC5(&ec_dev->lock);
			return ret;
		}
	}

	if (msg->insize > ec_dev->max_response) {
		FUNC2(ec_dev->dev, "clamping message receive buffer\n");
		msg->insize = ec_dev->max_response;
	}

	if (msg->command < FUNC0(1)) {
		if (msg->outsize > ec_dev->max_request) {
			FUNC3(ec_dev->dev,
				"request of size %u is too big (max: %u)\n",
				msg->outsize,
				ec_dev->max_request);
			FUNC5(&ec_dev->lock);
			return -EMSGSIZE;
		}
	} else {
		if (msg->outsize > ec_dev->max_passthru) {
			FUNC3(ec_dev->dev,
				"passthru rq of size %u is too big (max: %u)\n",
				msg->outsize,
				ec_dev->max_passthru);
			FUNC5(&ec_dev->lock);
			return -EMSGSIZE;
		}
	}
	ret = FUNC6(ec_dev, msg);
	FUNC5(&ec_dev->lock);

	return ret;
}