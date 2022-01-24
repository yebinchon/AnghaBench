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
struct sdw_cdns {int dummy; } ;
struct sdw_bus {int dummy; } ;
typedef  enum sdw_command_response { ____Placeholder_sdw_command_response } sdw_command_response ;

/* Variables and functions */
 int CDNS_MCP_CMD_LEN ; 
 int SDW_CMD_FAIL_OTHER ; 
 int FUNC0 (struct sdw_cdns*,struct sdw_msg*,int,int,int,int) ; 
 struct sdw_cdns* FUNC1 (struct sdw_bus*) ; 
 int FUNC2 (struct sdw_cdns*,struct sdw_msg*,int*) ; 

enum sdw_command_response
FUNC3(struct sdw_bus *bus, struct sdw_msg *msg)
{
	struct sdw_cdns *cdns = FUNC1(bus);
	int cmd = 0, ret, i;

	ret = FUNC2(cdns, msg, &cmd);
	if (ret)
		return SDW_CMD_FAIL_OTHER;

	for (i = 0; i < msg->len / CDNS_MCP_CMD_LEN; i++) {
		ret = FUNC0(cdns, msg, cmd, i * CDNS_MCP_CMD_LEN,
				     CDNS_MCP_CMD_LEN, false);
		if (ret < 0)
			goto exit;
	}

	if (!(msg->len % CDNS_MCP_CMD_LEN))
		goto exit;

	ret = FUNC0(cdns, msg, cmd, i * CDNS_MCP_CMD_LEN,
			     msg->len % CDNS_MCP_CMD_LEN, false);

exit:
	return ret;
}