#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* ptr; } ;
struct scsi_cmnd {int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;TYPE_1__ SCp; scalar_t__ result; } ;
struct mvumi_hba {TYPE_2__* instancet; } ;
struct mvumi_cmd {struct scsi_cmnd* scmd; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; scalar_t__ hostdata; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* fire_cmd ) (struct mvumi_hba*,struct mvumi_cmd*) ;} ;

/* Variables and functions */
 int SCSI_MLQUEUE_HOST_BUSY ; 
 int FUNC0 (struct mvumi_hba*,struct scsi_cmnd*,struct mvumi_cmd*) ; 
 struct mvumi_cmd* FUNC1 (struct mvumi_hba*) ; 
 int /*<<< orphan*/  FUNC2 (struct mvumi_hba*,struct mvumi_cmd*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct mvumi_hba*,struct mvumi_cmd*) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct Scsi_Host *shost,
					struct scsi_cmnd *scmd)
{
	struct mvumi_cmd *cmd;
	struct mvumi_hba *mhba;
	unsigned long irq_flags;

	FUNC3(shost->host_lock, irq_flags);

	mhba = (struct mvumi_hba *) shost->hostdata;
	scmd->result = 0;
	cmd = FUNC1(mhba);
	if (FUNC7(!cmd)) {
		FUNC4(shost->host_lock, irq_flags);
		return SCSI_MLQUEUE_HOST_BUSY;
	}

	if (FUNC7(FUNC0(mhba, scmd, cmd)))
		goto out_return_cmd;

	cmd->scmd = scmd;
	scmd->SCp.ptr = (char *) cmd;
	mhba->instancet->fire_cmd(mhba, cmd);
	FUNC4(shost->host_lock, irq_flags);
	return 0;

out_return_cmd:
	FUNC2(mhba, cmd);
	scmd->scsi_done(scmd);
	FUNC4(shost->host_lock, irq_flags);
	return 0;
}