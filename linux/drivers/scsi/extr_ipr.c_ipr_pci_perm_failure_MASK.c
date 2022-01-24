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
struct ipr_ioa_cfg {scalar_t__ sdt_state; int in_ioa_bringdown; int hrrq_num; TYPE_2__* host; int /*<<< orphan*/  eeh_wait_q; TYPE_1__* hrrq; scalar_t__ reset_retries; scalar_t__ probe_done; } ;
struct TYPE_4__ {int /*<<< orphan*/  host_lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  _lock; scalar_t__ allow_cmds; } ;

/* Variables and functions */
 scalar_t__ ABORT_DUMP ; 
 scalar_t__ IPR_NUM_RESET_RELOAD_RETRIES ; 
 int /*<<< orphan*/  IPR_SHUTDOWN_NONE ; 
 scalar_t__ WAIT_FOR_DUMP ; 
 int /*<<< orphan*/  FUNC0 (struct ipr_ioa_cfg*,int /*<<< orphan*/ ) ; 
 struct ipr_ioa_cfg* FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void FUNC8(struct pci_dev *pdev)
{
	unsigned long flags = 0;
	struct ipr_ioa_cfg *ioa_cfg = FUNC1(pdev);
	int i;

	FUNC3(ioa_cfg->host->host_lock, flags);
	if (ioa_cfg->probe_done) {
		if (ioa_cfg->sdt_state == WAIT_FOR_DUMP)
			ioa_cfg->sdt_state = ABORT_DUMP;
		ioa_cfg->reset_retries = IPR_NUM_RESET_RELOAD_RETRIES - 1;
		ioa_cfg->in_ioa_bringdown = 1;
		for (i = 0; i < ioa_cfg->hrrq_num; i++) {
			FUNC2(&ioa_cfg->hrrq[i]._lock);
			ioa_cfg->hrrq[i].allow_cmds = 0;
			FUNC4(&ioa_cfg->hrrq[i]._lock);
		}
		FUNC7();
		FUNC0(ioa_cfg, IPR_SHUTDOWN_NONE);
	} else
		FUNC6(&ioa_cfg->eeh_wait_q);
	FUNC5(ioa_cfg->host->host_lock, flags);
}