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
struct qtnf_pcie_bus_priv {int msi_enabled; struct pci_dev* pdev; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(struct qtnf_pcie_bus_priv *priv, bool use_msi)
{
	struct pci_dev *pdev = priv->pdev;

	/* fall back to legacy INTx interrupts by default */
	priv->msi_enabled = 0;

	/* check if MSI capability is available */
	if (use_msi) {
		if (!FUNC0(pdev)) {
			FUNC2("enabled MSI interrupt\n");
			priv->msi_enabled = 1;
		} else {
			FUNC3("failed to enable MSI interrupts");
		}
	}

	if (!priv->msi_enabled) {
		FUNC3("legacy PCIE interrupts enabled\n");
		FUNC1(pdev, 1);
	}
}