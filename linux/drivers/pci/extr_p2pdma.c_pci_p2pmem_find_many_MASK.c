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
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int INT_MAX ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  PCI_ANY_ID ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev**) ; 
 struct pci_dev** FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct pci_dev* FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 struct pci_dev* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int FUNC6 (struct pci_dev*,struct device**,int,int) ; 
 size_t FUNC7 (int) ; 

struct pci_dev *FUNC8(struct device **clients, int num_clients)
{
	struct pci_dev *pdev = NULL;
	int distance;
	int closest_distance = INT_MAX;
	struct pci_dev **closest_pdevs;
	int dev_cnt = 0;
	const int max_devs = PAGE_SIZE / sizeof(*closest_pdevs);
	int i;

	closest_pdevs = FUNC1(PAGE_SIZE, GFP_KERNEL);
	if (!closest_pdevs)
		return NULL;

	while ((pdev = FUNC4(PCI_ANY_ID, PCI_ANY_ID, pdev))) {
		if (!FUNC5(pdev))
			continue;

		distance = FUNC6(pdev, clients,
						    num_clients, false);
		if (distance < 0 || distance > closest_distance)
			continue;

		if (distance == closest_distance && dev_cnt >= max_devs)
			continue;

		if (distance < closest_distance) {
			for (i = 0; i < dev_cnt; i++)
				FUNC3(closest_pdevs[i]);

			dev_cnt = 0;
			closest_distance = distance;
		}

		closest_pdevs[dev_cnt++] = FUNC2(pdev);
	}

	if (dev_cnt)
		pdev = FUNC2(closest_pdevs[FUNC7(dev_cnt)]);

	for (i = 0; i < dev_cnt; i++)
		FUNC3(closest_pdevs[i]);

	FUNC0(closest_pdevs);
	return pdev;
}