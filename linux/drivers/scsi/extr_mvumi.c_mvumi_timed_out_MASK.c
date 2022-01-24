#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * ptr; } ;
struct scsi_cmnd {int result; int /*<<< orphan*/  sc_data_direction; TYPE_3__ SCp; TYPE_1__* device; } ;
struct mvumi_hba {TYPE_5__* shost; TYPE_4__* pdev; int /*<<< orphan*/  fw_outstanding; int /*<<< orphan*/  tag_pool; int /*<<< orphan*/ ** tag_cmd; } ;
struct mvumi_cmd {int /*<<< orphan*/  queue_pointer; TYPE_2__* frame; } ;
struct Scsi_Host {int dummy; } ;
typedef  enum blk_eh_timer_return { ____Placeholder_blk_eh_timer_return } blk_eh_timer_return ;
struct TYPE_10__ {int /*<<< orphan*/  host_lock; } ;
struct TYPE_9__ {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {size_t tag; } ;
struct TYPE_6__ {struct Scsi_Host* host; } ;

/* Variables and functions */
 int BLK_EH_DONE ; 
 int DID_ABORT ; 
 int DRIVER_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mvumi_hba*,struct mvumi_cmd*) ; 
 scalar_t__ FUNC5 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_cmnd*) ; 
 struct mvumi_hba* FUNC8 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (struct mvumi_hba*,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static enum blk_eh_timer_return FUNC12(struct scsi_cmnd *scmd)
{
	struct mvumi_cmd *cmd = (struct mvumi_cmd *) scmd->SCp.ptr;
	struct Scsi_Host *host = scmd->device->host;
	struct mvumi_hba *mhba = FUNC8(host);
	unsigned long flags;

	FUNC9(mhba->shost->host_lock, flags);

	if (mhba->tag_cmd[cmd->frame->tag]) {
		mhba->tag_cmd[cmd->frame->tag] = NULL;
		FUNC11(mhba, &mhba->tag_pool, cmd->frame->tag);
	}
	if (!FUNC3(&cmd->queue_pointer))
		FUNC2(&cmd->queue_pointer);
	else
		FUNC0(&mhba->fw_outstanding);

	scmd->result = (DRIVER_INVALID << 24) | (DID_ABORT << 16);
	scmd->SCp.ptr = NULL;
	if (FUNC5(scmd)) {
		FUNC1(&mhba->pdev->dev, FUNC7(scmd),
			     FUNC6(scmd),
			     scmd->sc_data_direction);
	}
	FUNC4(mhba, cmd);
	FUNC10(mhba->shost->host_lock, flags);

	return BLK_EH_DONE;
}