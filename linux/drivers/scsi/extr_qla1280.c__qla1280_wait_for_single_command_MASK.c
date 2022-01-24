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
struct srb {int /*<<< orphan*/ * wait; struct scsi_cmnd* cmd; } ;
struct scsi_qla_host {TYPE_1__* host; } ;
struct scsi_cmnd {int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;} ;
struct completion {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct scsi_cmnd*) ; 
 scalar_t__ COMPLETED_HANDLE ; 
 int FAILED ; 
 int HZ ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC4 (struct completion*,int) ; 

__attribute__((used)) static int
FUNC5(struct scsi_qla_host *ha, struct srb *sp,
				 struct completion *wait)
{
	int	status = FAILED;
	struct scsi_cmnd *cmd = sp->cmd;

	FUNC2(ha->host->host_lock);
	FUNC4(wait, 4*HZ);
	FUNC1(ha->host->host_lock);
	sp->wait = NULL;
	if(FUNC0(cmd) == COMPLETED_HANDLE) {
		status = SUCCESS;
		(*cmd->scsi_done)(cmd);
	}
	return status;
}