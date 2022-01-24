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
struct pcie_pme_service_data {int noirq; int /*<<< orphan*/  lock; } ;
struct pcie_device {int /*<<< orphan*/  irq; struct pci_dev* port; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct pcie_pme_service_data* FUNC1 (struct pcie_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct pcie_device *srv)
{
	struct pcie_pme_service_data *data = FUNC1(srv);

	FUNC4(&data->lock);
	if (data->noirq) {
		struct pci_dev *port = srv->port;

		FUNC2(port);
		FUNC3(port, true);
		data->noirq = false;
	} else {
		FUNC0(srv->irq);
	}
	FUNC5(&data->lock);

	return 0;
}