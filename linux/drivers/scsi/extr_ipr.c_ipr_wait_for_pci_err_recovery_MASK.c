#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct pci_dev {int dummy; } ;
struct ipr_ioa_cfg {int /*<<< orphan*/  eeh_wait_q; struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPR_PCI_ERROR_RECOVERY_TIMEOUT ; 
 scalar_t__ FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ipr_ioa_cfg *ioa_cfg)
{
	struct pci_dev *pdev = ioa_cfg->pdev;

	if (FUNC0(pdev)) {
		FUNC2(ioa_cfg->eeh_wait_q,
				   !FUNC0(pdev),
				   IPR_PCI_ERROR_RECOVERY_TIMEOUT);
		FUNC1(pdev);
	}
}