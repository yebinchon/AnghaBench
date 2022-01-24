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
struct ec_response_get_version {int current_image; char* version_string_ro; char* version_string_rw; } ;
struct cros_ec_dev {int /*<<< orphan*/  ec_dev; scalar_t__ cmd_offset; } ;
struct cros_ec_command {int insize; int result; scalar_t__ data; scalar_t__ command; } ;

/* Variables and functions */
 int FUNC0 (char const* const*) ; 
 char* CROS_EC_DEV_VERSION ; 
 scalar_t__ EC_CMD_GET_VERSION ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (int /*<<< orphan*/ ,struct cros_ec_command*) ; 
 int /*<<< orphan*/  FUNC2 (struct cros_ec_command*) ; 
 struct cros_ec_command* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,...) ; 

__attribute__((used)) static int FUNC5(struct cros_ec_dev *ec, char *str, int maxlen)
{
	static const char * const current_image_name[] = {
		"unknown", "read-only", "read-write", "invalid",
	};
	struct ec_response_get_version *resp;
	struct cros_ec_command *msg;
	int ret;

	msg = FUNC3(sizeof(*msg) + sizeof(*resp), GFP_KERNEL);
	if (!msg)
		return -ENOMEM;

	msg->command = EC_CMD_GET_VERSION + ec->cmd_offset;
	msg->insize = sizeof(*resp);

	ret = FUNC1(ec->ec_dev, msg);
	if (ret < 0) {
		FUNC4(str, maxlen,
			 "Unknown EC version, returned error: %d\n",
			 msg->result);
		goto exit;
	}

	resp = (struct ec_response_get_version *)msg->data;
	if (resp->current_image >= FUNC0(current_image_name))
		resp->current_image = 3; /* invalid */

	FUNC4(str, maxlen, "%s\n%s\n%s\n%s\n", CROS_EC_DEV_VERSION,
		 resp->version_string_ro, resp->version_string_rw,
		 current_image_name[resp->current_image]);

	ret = 0;
exit:
	FUNC2(msg);
	return ret;
}