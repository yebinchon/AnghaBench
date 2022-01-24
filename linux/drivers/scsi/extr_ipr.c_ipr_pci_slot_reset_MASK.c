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
struct pci_dev {int dummy; } ;
struct ipr_ioa_cfg {TYPE_1__* host; int /*<<< orphan*/  eeh_wait_q; scalar_t__ needs_warm_reset; scalar_t__ probe_done; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;
struct TYPE_2__ {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPR_SHUTDOWN_NONE ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_RECOVERED ; 
 int /*<<< orphan*/  FUNC0 (struct ipr_ioa_cfg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ipr_ioa_cfg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ipr_reset_restore_cfg_space ; 
 struct ipr_ioa_cfg* FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static pci_ers_result_t FUNC6(struct pci_dev *pdev)
{
	unsigned long flags = 0;
	struct ipr_ioa_cfg *ioa_cfg = FUNC2(pdev);

	FUNC3(ioa_cfg->host->host_lock, flags);
	if (ioa_cfg->probe_done) {
		if (ioa_cfg->needs_warm_reset)
			FUNC1(ioa_cfg, IPR_SHUTDOWN_NONE);
		else
			FUNC0(ioa_cfg, ipr_reset_restore_cfg_space,
						IPR_SHUTDOWN_NONE);
	} else
		FUNC5(&ioa_cfg->eeh_wait_q);
	FUNC4(ioa_cfg->host->host_lock, flags);
	return PCI_ERS_RESULT_RECOVERED;
}