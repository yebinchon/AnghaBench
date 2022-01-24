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
struct qtnf_pcie_bus_priv {struct pci_dev* pdev; } ;
struct qtnf_bus {int /*<<< orphan*/  fw_work; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct qtnf_pcie_bus_priv* FUNC0 (struct qtnf_bus*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct qtnf_bus *bus)
{
	struct qtnf_pcie_bus_priv *priv = FUNC0(bus);
	struct pci_dev *pdev = priv->pdev;

	FUNC1(&pdev->dev);
	FUNC2(&bus->fw_work);
}