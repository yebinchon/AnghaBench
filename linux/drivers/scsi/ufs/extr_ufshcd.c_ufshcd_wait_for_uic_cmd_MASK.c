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
struct uic_command {int argument2; int /*<<< orphan*/  done; } ;
struct ufs_hba {TYPE_1__* host; int /*<<< orphan*/ * active_uic_cmd; } ;
struct TYPE_2__ {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int MASK_UIC_COMMAND_RESULT ; 
 int /*<<< orphan*/  UIC_CMD_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct ufs_hba *hba, struct uic_command *uic_cmd)
{
	int ret;
	unsigned long flags;

	if (FUNC3(&uic_cmd->done,
					FUNC0(UIC_CMD_TIMEOUT)))
		ret = uic_cmd->argument2 & MASK_UIC_COMMAND_RESULT;
	else
		ret = -ETIMEDOUT;

	FUNC1(hba->host->host_lock, flags);
	hba->active_uic_cmd = NULL;
	FUNC2(hba->host->host_lock, flags);

	return ret;
}