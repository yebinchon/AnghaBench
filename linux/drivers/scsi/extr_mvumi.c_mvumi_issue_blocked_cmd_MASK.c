#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct mvumi_hba {TYPE_4__* shost; int /*<<< orphan*/  fw_outstanding; TYPE_3__* pdev; int /*<<< orphan*/  tag_pool; int /*<<< orphan*/ ** tag_cmd; int /*<<< orphan*/  int_cmd_wait_q; TYPE_1__* instancet; } ;
struct mvumi_cmd {scalar_t__ cmd_status; int /*<<< orphan*/  queue_pointer; TYPE_2__* frame; int /*<<< orphan*/  sync_cmd; } ;
struct TYPE_8__ {int /*<<< orphan*/  host_lock; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {size_t tag; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* fire_cmd ) (struct mvumi_hba*,struct mvumi_cmd*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int HZ ; 
 int MVUMI_INTERNAL_CMD_WAIT_TIME ; 
 scalar_t__ REQ_STATUS_PENDING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct mvumi_hba*,struct mvumi_cmd*) ; 
 int /*<<< orphan*/  FUNC11 (struct mvumi_hba*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC13(struct mvumi_hba *mhba,
						struct mvumi_cmd *cmd)
{
	unsigned long flags;

	cmd->cmd_status = REQ_STATUS_PENDING;

	if (FUNC3(&cmd->sync_cmd)) {
		FUNC4(&mhba->pdev->dev,
			"last blocked cmd not finished, sync_cmd = %d\n",
						FUNC3(&cmd->sync_cmd));
		FUNC0(1);
		return -1;
	}
	FUNC2(&cmd->sync_cmd);
	FUNC8(mhba->shost->host_lock, flags);
	mhba->instancet->fire_cmd(mhba, cmd);
	FUNC9(mhba->shost->host_lock, flags);

	FUNC12(mhba->int_cmd_wait_q,
		(cmd->cmd_status != REQ_STATUS_PENDING),
		MVUMI_INTERNAL_CMD_WAIT_TIME * HZ);

	/* command timeout */
	if (FUNC3(&cmd->sync_cmd)) {
		FUNC8(mhba->shost->host_lock, flags);
		FUNC1(&cmd->sync_cmd);
		if (mhba->tag_cmd[cmd->frame->tag]) {
			mhba->tag_cmd[cmd->frame->tag] = NULL;
			FUNC5(&mhba->pdev->dev, "TIMEOUT:release tag [%d]\n",
							cmd->frame->tag);
			FUNC11(mhba, &mhba->tag_pool, cmd->frame->tag);
		}
		if (!FUNC7(&cmd->queue_pointer)) {
			FUNC5(&mhba->pdev->dev,
				"TIMEOUT:A internal command doesn't send!\n");
			FUNC6(&cmd->queue_pointer);
		} else
			FUNC1(&mhba->fw_outstanding);

		FUNC9(mhba->shost->host_lock, flags);
	}
	return 0;
}