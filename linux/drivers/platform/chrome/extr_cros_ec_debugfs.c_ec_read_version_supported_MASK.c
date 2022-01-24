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
struct ec_response_get_cmd_versions {int version_mask; } ;
struct ec_params_get_cmd_versions_v1 {int /*<<< orphan*/  cmd; } ;
struct cros_ec_dev {int /*<<< orphan*/  ec_dev; scalar_t__ cmd_offset; } ;
struct cros_ec_command {int outsize; int insize; scalar_t__ data; scalar_t__ command; } ;

/* Variables and functions */
 int /*<<< orphan*/  EC_CMD_CONSOLE_READ ; 
 scalar_t__ EC_CMD_GET_CMD_VERSIONS ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct cros_ec_command*) ; 
 int /*<<< orphan*/  FUNC2 (struct cros_ec_command*) ; 
 struct cros_ec_command* FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(struct cros_ec_dev *ec)
{
	struct ec_params_get_cmd_versions_v1 *params;
	struct ec_response_get_cmd_versions *response;
	int ret;

	struct cros_ec_command *msg;

	msg = FUNC3(sizeof(*msg) + FUNC4(sizeof(*params), sizeof(*response)),
		GFP_KERNEL);
	if (!msg)
		return 0;

	msg->command = EC_CMD_GET_CMD_VERSIONS + ec->cmd_offset;
	msg->outsize = sizeof(*params);
	msg->insize = sizeof(*response);

	params = (struct ec_params_get_cmd_versions_v1 *)msg->data;
	params->cmd = EC_CMD_CONSOLE_READ;
	response = (struct ec_response_get_cmd_versions *)msg->data;

	ret = FUNC1(ec->ec_dev, msg) >= 0 &&
	      response->version_mask & FUNC0(1);

	FUNC2(msg);

	return ret;
}