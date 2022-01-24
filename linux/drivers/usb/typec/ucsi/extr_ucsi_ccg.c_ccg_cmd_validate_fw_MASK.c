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
struct ucsi_ccg {int /*<<< orphan*/  lock; } ;
struct ccg_cmd {unsigned int data; int len; int delay; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCGX_RAB_VALIDATE_FW ; 
 int CMD_SUCCESS ; 
 int FUNC0 (struct ucsi_ccg*,struct ccg_cmd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct ucsi_ccg *uc, unsigned int fwid)
{
	struct ccg_cmd cmd;
	int ret;

	cmd.reg = CCGX_RAB_VALIDATE_FW;
	cmd.data = fwid;
	cmd.len = 1;
	cmd.delay = 500;

	FUNC1(&uc->lock);

	ret = FUNC0(uc, &cmd);

	FUNC2(&uc->lock);

	if (ret != CMD_SUCCESS)
		return ret;

	return 0;
}