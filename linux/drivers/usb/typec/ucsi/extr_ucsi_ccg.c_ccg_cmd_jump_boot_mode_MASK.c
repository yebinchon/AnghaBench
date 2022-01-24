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
struct ucsi_ccg {int /*<<< orphan*/  lock; int /*<<< orphan*/  flags; } ;
struct ccg_cmd {int len; int delay; int /*<<< orphan*/  data; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCGX_RAB_JUMP_TO_BOOT ; 
 int RESET_COMPLETE ; 
 int /*<<< orphan*/  RESET_PENDING ; 
 int /*<<< orphan*/  TO_ALT_FW ; 
 int /*<<< orphan*/  TO_BOOT ; 
 int FUNC0 (struct ucsi_ccg*,struct ccg_cmd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct ucsi_ccg *uc, int bl_mode)
{
	struct ccg_cmd cmd;
	int ret;

	cmd.reg = CCGX_RAB_JUMP_TO_BOOT;

	if (bl_mode)
		cmd.data = TO_BOOT;
	else
		cmd.data = TO_ALT_FW;

	cmd.len = 1;
	cmd.delay = 100;

	FUNC2(&uc->lock);

	FUNC4(RESET_PENDING, &uc->flags);

	ret = FUNC0(uc, &cmd);
	if (ret != RESET_COMPLETE)
		goto err_clear_flag;

	ret = 0;

err_clear_flag:
	FUNC1(RESET_PENDING, &uc->flags);

	FUNC3(&uc->lock);

	return ret;
}