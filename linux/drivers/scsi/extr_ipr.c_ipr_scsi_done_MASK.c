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
typedef  int /*<<< orphan*/  u32 ;
struct scsi_cmnd {int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;} ;
struct ipr_ioa_cfg {TYPE_5__* host; } ;
struct TYPE_6__ {int /*<<< orphan*/  residual_data_len; int /*<<< orphan*/  ioasc; } ;
struct TYPE_7__ {TYPE_1__ hdr; } ;
struct TYPE_8__ {TYPE_2__ ioasa; } ;
struct ipr_cmnd {TYPE_4__* hrrq; int /*<<< orphan*/  queue; scalar_t__ eh_comp; TYPE_3__ s; struct scsi_cmnd* scsi_cmd; struct ipr_ioa_cfg* ioa_cfg; } ;
struct TYPE_10__ {int /*<<< orphan*/  host_lock; } ;
struct TYPE_9__ {int /*<<< orphan*/  _lock; int /*<<< orphan*/  lock; int /*<<< orphan*/  hrrq_free_q; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ipr_ioa_cfg*,struct ipr_cmnd*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_cmnd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (struct scsi_cmnd*) ; 

__attribute__((used)) static void FUNC13(struct ipr_cmnd *ipr_cmd)
{
	struct ipr_ioa_cfg *ioa_cfg = ipr_cmd->ioa_cfg;
	struct scsi_cmnd *scsi_cmd = ipr_cmd->scsi_cmd;
	u32 ioasc = FUNC1(ipr_cmd->s.ioasa.hdr.ioasc);
	unsigned long lock_flags;

	FUNC7(scsi_cmd, FUNC1(ipr_cmd->s.ioasa.hdr.residual_data_len));

	if (FUNC4(FUNC0(ioasc) == 0)) {
		FUNC6(scsi_cmd);

		FUNC9(ipr_cmd->hrrq->lock, lock_flags);
		scsi_cmd->scsi_done(scsi_cmd);
		if (ipr_cmd->eh_comp)
			FUNC2(ipr_cmd->eh_comp);
		FUNC5(&ipr_cmd->queue, &ipr_cmd->hrrq->hrrq_free_q);
		FUNC11(ipr_cmd->hrrq->lock, lock_flags);
	} else {
		FUNC9(ioa_cfg->host->host_lock, lock_flags);
		FUNC8(&ipr_cmd->hrrq->_lock);
		FUNC3(ioa_cfg, ipr_cmd);
		FUNC10(&ipr_cmd->hrrq->_lock);
		FUNC11(ioa_cfg->host->host_lock, lock_flags);
	}
}