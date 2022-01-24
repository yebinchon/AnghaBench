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
struct ipr_ioa_cfg {TYPE_1__* host; int /*<<< orphan*/  probe_done; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;
struct TYPE_2__ {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_ERS_RESULT_NEED_RESET ; 
 struct ipr_ioa_cfg* FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static pci_ers_result_t FUNC4(struct pci_dev *pdev)
{
	unsigned long flags = 0;
	struct ipr_ioa_cfg *ioa_cfg = FUNC0(pdev);

	FUNC2(ioa_cfg->host->host_lock, flags);
	if (!ioa_cfg->probe_done)
		FUNC1(pdev);
	FUNC3(ioa_cfg->host->host_lock, flags);
	return PCI_ERS_RESULT_NEED_RESET;
}