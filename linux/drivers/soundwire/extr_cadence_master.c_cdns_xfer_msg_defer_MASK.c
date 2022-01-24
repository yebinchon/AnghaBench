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
struct sdw_msg {int len; } ;
struct sdw_defer {int length; } ;
struct sdw_cdns {struct sdw_defer* defer; } ;
struct sdw_bus {int dummy; } ;
typedef  enum sdw_command_response { ____Placeholder_sdw_command_response } sdw_command_response ;

/* Variables and functions */
 int ENOTSUPP ; 
 int SDW_CMD_FAIL_OTHER ; 
 int FUNC0 (struct sdw_cdns*,struct sdw_msg*,int,int /*<<< orphan*/ ,int,int) ; 
 struct sdw_cdns* FUNC1 (struct sdw_bus*) ; 
 int FUNC2 (struct sdw_cdns*,struct sdw_msg*,int*) ; 

enum sdw_command_response
FUNC3(struct sdw_bus *bus,
		    struct sdw_msg *msg, struct sdw_defer *defer)
{
	struct sdw_cdns *cdns = FUNC1(bus);
	int cmd = 0, ret;

	/* for defer only 1 message is supported */
	if (msg->len > 1)
		return -ENOTSUPP;

	ret = FUNC2(cdns, msg, &cmd);
	if (ret)
		return SDW_CMD_FAIL_OTHER;

	cdns->defer = defer;
	cdns->defer->length = msg->len;

	return FUNC0(cdns, msg, cmd, 0, msg->len, true);
}