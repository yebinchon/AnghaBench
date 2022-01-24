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
typedef  int u32 ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTEL_MPC_REG ; 
 int INTEL_MPC_REG_IRBNCE ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct pci_dev *dev)
{
	u32 mpc;

	/*
	 * When enabled, the IRBNCE bit of the MPC register enables the
	 * equivalent of PCI ACS Source Validation (PCI_ACS_SV), which
	 * ensures that requester IDs fall within the bus number range
	 * of the bridge.  Enable if not already.
	 */
	FUNC1(dev, INTEL_MPC_REG, &mpc);
	if (!(mpc & INTEL_MPC_REG_IRBNCE)) {
		FUNC0(dev, "Enabling MPC IRBNCE\n");
		mpc |= INTEL_MPC_REG_IRBNCE;
		FUNC2(dev, INTEL_MPC_REG, mpc);
	}
}