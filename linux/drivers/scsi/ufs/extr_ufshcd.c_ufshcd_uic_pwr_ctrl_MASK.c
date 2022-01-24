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
typedef  scalar_t__ u8 ;
struct uic_command {scalar_t__ argument3; int /*<<< orphan*/  command; } ;
struct ufs_hba {int /*<<< orphan*/  uic_cmd_mutex; TYPE_1__* host; struct completion* uic_async_done; int /*<<< orphan*/ * active_uic_cmd; int /*<<< orphan*/  dev; } ;
struct completion {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 scalar_t__ PWR_LOCAL ; 
 scalar_t__ PWR_OK ; 
 int /*<<< orphan*/  REG_INTERRUPT_ENABLE ; 
 int /*<<< orphan*/  UIC_CMD_TIMEOUT ; 
 int UIC_COMMAND_COMPL ; 
 int FUNC0 (struct ufs_hba*,struct uic_command*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC2 (struct completion*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC9 (struct ufs_hba*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ufs_hba*,int) ; 
 scalar_t__ FUNC11 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC12 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC13 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC14 (struct ufs_hba*) ; 
 int FUNC15 (struct ufs_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct completion*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 () ; 

__attribute__((used)) static int FUNC18(struct ufs_hba *hba, struct uic_command *cmd)
{
	struct completion uic_async_done;
	unsigned long flags;
	u8 status;
	int ret;
	bool reenable_intr = false;

	FUNC4(&hba->uic_cmd_mutex);
	FUNC2(&uic_async_done);
	FUNC8(hba);

	FUNC6(hba->host->host_lock, flags);
	hba->uic_async_done = &uic_async_done;
	if (FUNC15(hba, REG_INTERRUPT_ENABLE) & UIC_COMMAND_COMPL) {
		FUNC9(hba, UIC_COMMAND_COMPL);
		/*
		 * Make sure UIC command completion interrupt is disabled before
		 * issuing UIC command.
		 */
		FUNC17();
		reenable_intr = true;
	}
	ret = FUNC0(hba, cmd, false);
	FUNC7(hba->host->host_lock, flags);
	if (ret) {
		FUNC1(hba->dev,
			"pwr ctrl cmd 0x%x with mode 0x%x uic error %d\n",
			cmd->command, cmd->argument3, ret);
		goto out;
	}

	if (!FUNC16(hba->uic_async_done,
					 FUNC3(UIC_CMD_TIMEOUT))) {
		FUNC1(hba->dev,
			"pwr ctrl cmd 0x%x with mode 0x%x completion timeout\n",
			cmd->command, cmd->argument3);
		ret = -ETIMEDOUT;
		goto out;
	}

	status = FUNC11(hba);
	if (status != PWR_LOCAL) {
		FUNC1(hba->dev,
			"pwr ctrl cmd 0x%x failed, host upmcrs:0x%x\n",
			cmd->command, status);
		ret = (status != PWR_OK) ? status : -1;
	}
out:
	if (ret) {
		FUNC13(hba);
		FUNC14(hba);
		FUNC12(hba);
	}

	FUNC6(hba->host->host_lock, flags);
	hba->active_uic_cmd = NULL;
	hba->uic_async_done = NULL;
	if (reenable_intr)
		FUNC10(hba, UIC_COMMAND_COMPL);
	FUNC7(hba->host->host_lock, flags);
	FUNC5(&hba->uic_cmd_mutex);

	return ret;
}