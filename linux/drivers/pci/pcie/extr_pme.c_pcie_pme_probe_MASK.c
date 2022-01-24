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
struct pcie_pme_service_data {struct pcie_device* srv; int /*<<< orphan*/  work; int /*<<< orphan*/  lock; } ;
struct pcie_device {int /*<<< orphan*/  irq; struct pci_dev* port; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC1 (struct pcie_pme_service_data*) ; 
 struct pcie_pme_service_data* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  pcie_pme_irq ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  pcie_pme_work_fn ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct pcie_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct pcie_device*,struct pcie_pme_service_data*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct pcie_device *srv)
{
	struct pci_dev *port;
	struct pcie_pme_service_data *data;
	int ret;

	data = FUNC2(sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	FUNC9(&data->lock);
	FUNC0(&data->work, pcie_pme_work_fn);
	data->srv = srv;
	FUNC8(srv, data);

	port = srv->port;
	FUNC5(port, false);
	FUNC4(port);

	ret = FUNC7(srv->irq, pcie_pme_irq, IRQF_SHARED, "PCIe PME", srv);
	if (ret) {
		FUNC1(data);
		return ret;
	}

	FUNC3(port, "Signaling with IRQ %d\n", srv->irq);

	FUNC6(port);
	FUNC5(port, true);
	return 0;
}