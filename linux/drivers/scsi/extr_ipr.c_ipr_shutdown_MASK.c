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
struct ipr_ioa_cfg {int nvectors; int hrrq_num; int /*<<< orphan*/  pdev; scalar_t__ sis64; scalar_t__ in_reset_reload; int /*<<< orphan*/  reset_wait_q; TYPE_2__* host; TYPE_1__* hrrq; scalar_t__ iopoll_weight; } ;
typedef  enum ipr_shutdown_type { ____Placeholder_ipr_shutdown_type } ipr_shutdown_type ;
struct TYPE_4__ {int /*<<< orphan*/  host_lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  iopoll; } ;

/* Variables and functions */
 int IPR_SHUTDOWN_NORMAL ; 
 int IPR_SHUTDOWN_QUIESCE ; 
 scalar_t__ SYSTEM_RESTART ; 
 scalar_t__ ipr_fast_reboot ; 
 int /*<<< orphan*/  FUNC0 (struct ipr_ioa_cfg*) ; 
 int /*<<< orphan*/  FUNC1 (struct ipr_ioa_cfg*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct ipr_ioa_cfg* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ system_state ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(struct pci_dev *pdev)
{
	struct ipr_ioa_cfg *ioa_cfg = FUNC4(pdev);
	unsigned long lock_flags = 0;
	enum ipr_shutdown_type shutdown_type = IPR_SHUTDOWN_NORMAL;
	int i;

	FUNC5(ioa_cfg->host->host_lock, lock_flags);
	if (ioa_cfg->iopoll_weight && ioa_cfg->sis64 && ioa_cfg->nvectors > 1) {
		ioa_cfg->iopoll_weight = 0;
		for (i = 1; i < ioa_cfg->hrrq_num; i++)
			FUNC2(&ioa_cfg->hrrq[i].iopoll);
	}

	while (ioa_cfg->in_reset_reload) {
		FUNC6(ioa_cfg->host->host_lock, lock_flags);
		FUNC7(ioa_cfg->reset_wait_q, !ioa_cfg->in_reset_reload);
		FUNC5(ioa_cfg->host->host_lock, lock_flags);
	}

	if (ipr_fast_reboot && system_state == SYSTEM_RESTART && ioa_cfg->sis64)
		shutdown_type = IPR_SHUTDOWN_QUIESCE;

	FUNC1(ioa_cfg, shutdown_type);
	FUNC6(ioa_cfg->host->host_lock, lock_flags);
	FUNC7(ioa_cfg->reset_wait_q, !ioa_cfg->in_reset_reload);
	if (ipr_fast_reboot && system_state == SYSTEM_RESTART && ioa_cfg->sis64) {
		FUNC0(ioa_cfg);
		FUNC3(ioa_cfg->pdev);
	}
}