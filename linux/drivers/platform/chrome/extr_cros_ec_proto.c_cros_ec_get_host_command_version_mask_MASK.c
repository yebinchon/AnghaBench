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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct ec_response_get_cmd_versions {int /*<<< orphan*/  version_mask; } ;
struct ec_params_get_cmd_versions {int /*<<< orphan*/  cmd; } ;
struct cros_ec_device {int dummy; } ;
struct cros_ec_command {int insize; int outsize; scalar_t__ data; int /*<<< orphan*/  command; scalar_t__ version; } ;

/* Variables and functions */
 int /*<<< orphan*/  EC_CMD_GET_CMD_VERSIONS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct cros_ec_command*) ; 
 struct cros_ec_command* FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,int) ; 
 int FUNC3 (struct cros_ec_device*,struct cros_ec_command*) ; 

__attribute__((used)) static int FUNC4(struct cros_ec_device *ec_dev,
	u16 cmd, u32 *mask)
{
	struct ec_params_get_cmd_versions *pver;
	struct ec_response_get_cmd_versions *rver;
	struct cros_ec_command *msg;
	int ret;

	msg = FUNC1(sizeof(*msg) + FUNC2(sizeof(*rver), sizeof(*pver)),
		      GFP_KERNEL);
	if (!msg)
		return -ENOMEM;

	msg->version = 0;
	msg->command = EC_CMD_GET_CMD_VERSIONS;
	msg->insize = sizeof(*rver);
	msg->outsize = sizeof(*pver);

	pver = (struct ec_params_get_cmd_versions *)msg->data;
	pver->cmd = cmd;

	ret = FUNC3(ec_dev, msg);
	if (ret > 0) {
		rver = (struct ec_response_get_cmd_versions *)msg->data;
		*mask = rver->version_mask;
	}

	FUNC0(msg);

	return ret;
}