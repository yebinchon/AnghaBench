#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ctlr_info {int dummy; } ;
struct CommandList {TYPE_1__* err_info; } ;
struct TYPE_2__ {scalar_t__ CommandStatus; scalar_t__ ScsiStatus; scalar_t__* SenseInfo; } ;

/* Variables and functions */
 scalar_t__ CMD_SUCCESS ; 
 scalar_t__ CMD_TARGET_STATUS ; 
 scalar_t__ NO_SENSE ; 
 int /*<<< orphan*/  NO_TIMEOUT ; 
 scalar_t__ SAM_STAT_CHECK_CONDITION ; 
 int /*<<< orphan*/  TEST_UNIT_READY ; 
 int /*<<< orphan*/  TYPE_CMD ; 
 scalar_t__ UNIT_ATTENTION ; 
 int /*<<< orphan*/  FUNC0 (struct CommandList*,int /*<<< orphan*/ ,struct ctlr_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ctlr_info*,struct CommandList*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct ctlr_info *h,
				struct CommandList *c, unsigned char lunaddr[],
				int reply_queue)
{
	int rc;

	/* Send the Test Unit Ready, fill_cmd can't fail, no mapping */
	(void) FUNC0(c, TEST_UNIT_READY, h,
			NULL, 0, 0, lunaddr, TYPE_CMD);
	rc = FUNC1(h, c, reply_queue, NO_TIMEOUT);
	if (rc)
		return rc;
	/* no unmap needed here because no data xfer. */

	/* Check if the unit is already ready. */
	if (c->err_info->CommandStatus == CMD_SUCCESS)
		return 0;

	/*
	 * The first command sent after reset will receive "unit attention" to
	 * indicate that the LUN has been reset...this is actually what we're
	 * looking for (but, success is good too).
	 */
	if (c->err_info->CommandStatus == CMD_TARGET_STATUS &&
		c->err_info->ScsiStatus == SAM_STAT_CHECK_CONDITION &&
			(c->err_info->SenseInfo[2] == NO_SENSE ||
			 c->err_info->SenseInfo[2] == UNIT_ATTENTION))
		return 0;

	return 1;
}