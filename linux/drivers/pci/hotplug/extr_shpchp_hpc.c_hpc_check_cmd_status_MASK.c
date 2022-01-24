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
typedef  int u16 ;
struct controller {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_STATUS ; 
 int INVALID_CMD ; 
 int INVALID_SPEED_MODE ; 
 int SWITCH_OPEN ; 
 int /*<<< orphan*/  FUNC0 (struct controller*,char*) ; 
 int FUNC1 (struct controller*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct controller *ctrl)
{
	int retval = 0;
	u16 cmd_status = FUNC1(ctrl, CMD_STATUS) & 0x000F;

	switch (cmd_status >> 1) {
	case 0:
		retval = 0;
		break;
	case 1:
		retval = SWITCH_OPEN;
		FUNC0(ctrl, "Switch opened!\n");
		break;
	case 2:
		retval = INVALID_CMD;
		FUNC0(ctrl, "Invalid HPC command!\n");
		break;
	case 4:
		retval = INVALID_SPEED_MODE;
		FUNC0(ctrl, "Invalid bus speed/mode!\n");
		break;
	default:
		retval = cmd_status;
	}

	return retval;
}