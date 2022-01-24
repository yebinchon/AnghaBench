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
struct pcie_pme_service_data {int dummy; } ;
struct pcie_device {int /*<<< orphan*/  irq; struct pci_dev* port; } ;
struct pci_dev {int /*<<< orphan*/  subordinate; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct pcie_pme_service_data* FUNC3 (struct pcie_device*) ; 
 int /*<<< orphan*/  pci_bus_sem ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,struct pcie_pme_service_data*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct pcie_device *srv)
{
	struct pcie_pme_service_data *data = FUNC3(srv);
	struct pci_dev *port = srv->port;
	bool wakeup;
	int ret;

	if (FUNC0(&port->dev)) {
		wakeup = true;
	} else {
		FUNC1(&pci_bus_sem);
		wakeup = FUNC4(port->subordinate);
		FUNC7(&pci_bus_sem);
	}
	if (wakeup) {
		ret = FUNC2(srv->irq);
		if (!ret)
			return 0;
	}

	FUNC5(port, data);

	FUNC6(srv->irq);

	return 0;
}