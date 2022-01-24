#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct scatterlist {int dummy; } ;
struct pci_p2pdma_pagemap {int /*<<< orphan*/  provider; } ;
struct pci_dev {int dummy; } ;
struct device {int dummy; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_2__ {int /*<<< orphan*/  pgmap; } ;

/* Variables and functions */
#define  PCI_P2PDMA_MAP_BUS_ADDR 129 
#define  PCI_P2PDMA_MAP_THRU_HOST_BRIDGE 128 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct pci_p2pdma_pagemap*,struct device*,struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int FUNC3 (struct device*,struct scatterlist*,int,int,unsigned long) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct pci_dev*) ; 
 TYPE_1__* FUNC5 (struct scatterlist*) ; 
 struct pci_p2pdma_pagemap* FUNC6 (int /*<<< orphan*/ ) ; 
 struct pci_dev* FUNC7 (struct device*) ; 

int FUNC8(struct device *dev, struct scatterlist *sg,
		int nents, enum dma_data_direction dir, unsigned long attrs)
{
	struct pci_p2pdma_pagemap *p2p_pgmap =
		FUNC6(FUNC5(sg)->pgmap);
	struct pci_dev *client;

	if (FUNC0(!FUNC2(dev)))
		return 0;

	client = FUNC7(dev);

	switch (FUNC4(p2p_pgmap->provider, client)) {
	case PCI_P2PDMA_MAP_THRU_HOST_BRIDGE:
		return FUNC3(dev, sg, nents, dir, attrs);
	case PCI_P2PDMA_MAP_BUS_ADDR:
		return FUNC1(p2p_pgmap, dev, sg, nents);
	default:
		FUNC0(1);
		return 0;
	}
}