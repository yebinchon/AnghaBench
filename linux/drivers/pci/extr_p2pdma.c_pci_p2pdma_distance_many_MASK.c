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
struct device {int /*<<< orphan*/ * dma_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_DMA_VIRT_OPS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int PCI_P2PDMA_MAP_NOT_SUPPORTED ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  dma_virt_ops ; 
 struct pci_dev* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int FUNC4 (struct pci_dev*,struct pci_dev*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct pci_dev*,struct pci_dev*,int*) ; 

int FUNC6(struct pci_dev *provider, struct device **clients,
			     int num_clients, bool verbose)
{
	bool not_supported = false;
	struct pci_dev *pci_client;
	int total_dist = 0;
	int distance;
	int i, ret;

	if (num_clients == 0)
		return -1;

	for (i = 0; i < num_clients; i++) {
		if (FUNC0(CONFIG_DMA_VIRT_OPS) &&
		    clients[i]->dma_ops == &dma_virt_ops) {
			if (verbose)
				FUNC1(clients[i],
					 "cannot be used for peer-to-peer DMA because the driver makes use of dma_virt_ops\n");
			return -1;
		}

		pci_client = FUNC2(clients[i]);
		if (!pci_client) {
			if (verbose)
				FUNC1(clients[i],
					 "cannot be used for peer-to-peer DMA as it is not a PCI device\n");
			return -1;
		}

		if (verbose)
			ret = FUNC5(provider,
					pci_client, &distance);
		else
			ret = FUNC4(provider, pci_client,
						       &distance, NULL, NULL);

		FUNC3(pci_client);

		if (ret == PCI_P2PDMA_MAP_NOT_SUPPORTED)
			not_supported = true;

		if (not_supported && !verbose)
			break;

		total_dist += distance;
	}

	if (not_supported)
		return -1;

	return total_dist;
}