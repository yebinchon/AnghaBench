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
struct sdw_msg {unsigned int dev_num; } ;
struct sdw_cdns {int dummy; } ;
struct sdw_bus {int dummy; } ;
typedef  int /*<<< orphan*/  msg ;
typedef  enum sdw_command_response { ____Placeholder_sdw_command_response } sdw_command_response ;

/* Variables and functions */
 struct sdw_cdns* FUNC0 (struct sdw_bus*) ; 
 int FUNC1 (struct sdw_cdns*,struct sdw_msg*) ; 
 int /*<<< orphan*/  FUNC2 (struct sdw_msg*,int /*<<< orphan*/ ,int) ; 

enum sdw_command_response
FUNC3(struct sdw_bus *bus, unsigned int dev_num)
{
	struct sdw_cdns *cdns = FUNC0(bus);
	struct sdw_msg msg;

	/* Create dummy message with valid device number */
	FUNC2(&msg, 0, sizeof(msg));
	msg.dev_num = dev_num;

	return FUNC1(cdns, &msg);
}