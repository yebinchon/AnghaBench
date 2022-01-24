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
struct scsi_cmnd {TYPE_2__* device; } ;
struct ipr_ioa_cfg {scalar_t__ sdt_state; TYPE_5__* host; TYPE_4__* hrrq; int /*<<< orphan*/  in_reset_reload; int /*<<< orphan*/  reset_wait_q; TYPE_3__* pdev; } ;
struct TYPE_10__ {int /*<<< orphan*/  host_lock; } ;
struct TYPE_9__ {scalar_t__ ioa_is_dead; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {TYPE_1__* host; } ;
struct TYPE_6__ {scalar_t__ hostdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENTER ; 
 int FAILED ; 
 scalar_t__ GET_DUMP ; 
 size_t IPR_INIT_HRRQ ; 
 int /*<<< orphan*/  IPR_SHUTDOWN_ABBREV ; 
 int /*<<< orphan*/  LEAVE ; 
 int SUCCESS ; 
 scalar_t__ WAIT_FOR_DUMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ipr_ioa_cfg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ipr_trace ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct scsi_cmnd *cmd)
{
	struct ipr_ioa_cfg *ioa_cfg;
	unsigned long lock_flags = 0;
	int rc = SUCCESS;

	ENTER;
	ioa_cfg = (struct ipr_ioa_cfg *) cmd->device->host->hostdata;
	FUNC2(ioa_cfg->host->host_lock, lock_flags);

	if (!ioa_cfg->in_reset_reload && !ioa_cfg->hrrq[IPR_INIT_HRRQ].ioa_is_dead) {
		FUNC1(ioa_cfg, IPR_SHUTDOWN_ABBREV);
		FUNC0(&ioa_cfg->pdev->dev,
			"Adapter being reset as a result of error recovery.\n");

		if (WAIT_FOR_DUMP == ioa_cfg->sdt_state)
			ioa_cfg->sdt_state = GET_DUMP;
	}

	FUNC3(ioa_cfg->host->host_lock, lock_flags);
	FUNC4(ioa_cfg->reset_wait_q, !ioa_cfg->in_reset_reload);
	FUNC2(ioa_cfg->host->host_lock, lock_flags);

	/* If we got hit with a host reset while we were already resetting
	 the adapter for some reason, and the reset failed. */
	if (ioa_cfg->hrrq[IPR_INIT_HRRQ].ioa_is_dead) {
		ipr_trace;
		rc = FAILED;
	}

	FUNC3(ioa_cfg->host->host_lock, lock_flags);
	LEAVE;
	return rc;
}