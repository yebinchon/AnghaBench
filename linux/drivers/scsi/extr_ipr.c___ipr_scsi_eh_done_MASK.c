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
struct scsi_cmnd {int result; int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;} ;
struct ipr_cmnd {TYPE_1__* hrrq; int /*<<< orphan*/  queue; scalar_t__ eh_comp; struct scsi_cmnd* scsi_cmd; } ;
struct TYPE_2__ {int /*<<< orphan*/  hrrq_free_q; } ;

/* Variables and functions */
 int DID_ERROR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_cmnd*) ; 

__attribute__((used)) static void FUNC4(struct ipr_cmnd *ipr_cmd)
{
	struct scsi_cmnd *scsi_cmd = ipr_cmd->scsi_cmd;

	scsi_cmd->result |= (DID_ERROR << 16);

	FUNC2(ipr_cmd->scsi_cmd);
	scsi_cmd->scsi_done(scsi_cmd);
	if (ipr_cmd->eh_comp)
		FUNC0(ipr_cmd->eh_comp);
	FUNC1(&ipr_cmd->queue, &ipr_cmd->hrrq->hrrq_free_q);
}