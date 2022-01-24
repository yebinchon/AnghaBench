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
typedef  scalar_t__ u16 ;
struct pci_dev {int dummy; } ;
struct dpc_dev {scalar_t__ rp_extensions; scalar_t__ cap_pos; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_ERS_RESULT_DISCONNECT ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_RECOVERED ; 
 scalar_t__ PCI_EXP_DPC_STATUS ; 
 int /*<<< orphan*/  PCI_EXP_DPC_STATUS_TRIGGER ; 
 scalar_t__ FUNC0 (struct dpc_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int) ; 
 struct dpc_dev* FUNC3 (struct pci_dev*) ; 

__attribute__((used)) static pci_ers_result_t FUNC4(struct pci_dev *pdev)
{
	struct dpc_dev *dpc;
	u16 cap;

	/*
	 * DPC disables the Link automatically in hardware, so it has
	 * already been reset by the time we get here.
	 */
	dpc = FUNC3(pdev);
	cap = dpc->cap_pos;

	/*
	 * Wait until the Link is inactive, then clear DPC Trigger Status
	 * to allow the Port to leave DPC.
	 */
	FUNC2(pdev, false);

	if (dpc->rp_extensions && FUNC0(dpc))
		return PCI_ERS_RESULT_DISCONNECT;

	FUNC1(pdev, cap + PCI_EXP_DPC_STATUS,
			      PCI_EXP_DPC_STATUS_TRIGGER);

	if (!FUNC2(pdev, true))
		return PCI_ERS_RESULT_DISCONNECT;

	return PCI_ERS_RESULT_RECOVERED;
}