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
struct pci_dev {int dummy; } ;
struct ipr_ioa_cfg {int hrrq_num; scalar_t__ sdt_state; TYPE_2__* host; int /*<<< orphan*/  queue; int /*<<< orphan*/  used_res_q; scalar_t__ reset_work_q; int /*<<< orphan*/  work_q; scalar_t__ in_reset_reload; int /*<<< orphan*/  reset_wait_q; TYPE_1__* hrrq; } ;
struct TYPE_4__ {int /*<<< orphan*/ * host_lock; } ;
struct TYPE_3__ {int removing_ioa; int /*<<< orphan*/  _lock; } ;

/* Variables and functions */
 scalar_t__ ABORT_DUMP ; 
 int /*<<< orphan*/  ENTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IPR_SHUTDOWN_NORMAL ; 
 int /*<<< orphan*/  LEAVE ; 
 scalar_t__ WAIT_FOR_DUMP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  ipr_driver_lock ; 
 int /*<<< orphan*/  FUNC3 (struct ipr_ioa_cfg*) ; 
 int /*<<< orphan*/  FUNC4 (struct ipr_ioa_cfg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct ipr_ioa_cfg* FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static void FUNC13(struct pci_dev *pdev)
{
	unsigned long host_lock_flags = 0;
	struct ipr_ioa_cfg *ioa_cfg = FUNC6(pdev);
	int i;
	unsigned long driver_lock_flags;
	ENTER;

	FUNC8(ioa_cfg->host->host_lock, host_lock_flags);
	while (ioa_cfg->in_reset_reload) {
		FUNC10(ioa_cfg->host->host_lock, host_lock_flags);
		FUNC11(ioa_cfg->reset_wait_q, !ioa_cfg->in_reset_reload);
		FUNC8(ioa_cfg->host->host_lock, host_lock_flags);
	}

	for (i = 0; i < ioa_cfg->hrrq_num; i++) {
		FUNC7(&ioa_cfg->hrrq[i]._lock);
		ioa_cfg->hrrq[i].removing_ioa = 1;
		FUNC9(&ioa_cfg->hrrq[i]._lock);
	}
	FUNC12();
	FUNC4(ioa_cfg, IPR_SHUTDOWN_NORMAL);

	FUNC10(ioa_cfg->host->host_lock, host_lock_flags);
	FUNC11(ioa_cfg->reset_wait_q, !ioa_cfg->in_reset_reload);
	FUNC1(&ioa_cfg->work_q);
	if (ioa_cfg->reset_work_q)
		FUNC2(ioa_cfg->reset_work_q);
	FUNC0(&ioa_cfg->used_res_q);
	FUNC8(ioa_cfg->host->host_lock, host_lock_flags);

	FUNC8(&ipr_driver_lock, driver_lock_flags);
	FUNC5(&ioa_cfg->queue);
	FUNC10(&ipr_driver_lock, driver_lock_flags);

	if (ioa_cfg->sdt_state == ABORT_DUMP)
		ioa_cfg->sdt_state = WAIT_FOR_DUMP;
	FUNC10(ioa_cfg->host->host_lock, host_lock_flags);

	FUNC3(ioa_cfg);

	LEAVE;
}