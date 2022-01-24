#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct TYPE_5__ {int flags; scalar_t__ start; scalar_t__ end; } ;
struct dev_pagemap {TYPE_2__ res; int /*<<< orphan*/  ref; int /*<<< orphan*/  type; } ;
struct pci_p2pdma_pagemap {scalar_t__ bus_offset; struct pci_dev* provider; struct dev_pagemap pgmap; } ;
struct pci_dev {int /*<<< orphan*/  dev; TYPE_1__* p2pdma; } ;
struct TYPE_4__ {int /*<<< orphan*/  pool; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  MEMORY_DEVICE_PCI_P2PDMA ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct dev_pagemap*) ; 
 struct pci_p2pdma_pagemap* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ *,struct dev_pagemap*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct dev_pagemap*) ; 
 int FUNC7 (int /*<<< orphan*/ ,unsigned long,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,char*,TYPE_2__*) ; 
 int FUNC10 (struct pci_dev*) ; 
 int FUNC11 (struct pci_dev*,int) ; 
 scalar_t__ FUNC12 (struct pci_dev*,int) ; 
 scalar_t__ FUNC13 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 

int FUNC15(struct pci_dev *pdev, int bar, size_t size,
			    u64 offset)
{
	struct pci_p2pdma_pagemap *p2p_pgmap;
	struct dev_pagemap *pgmap;
	void *addr;
	int error;

	if (!(FUNC11(pdev, bar) & IORESOURCE_MEM))
		return -EINVAL;

	if (offset >= FUNC12(pdev, bar))
		return -EINVAL;

	if (!size)
		size = FUNC12(pdev, bar) - offset;

	if (size + offset > FUNC12(pdev, bar))
		return -EINVAL;

	if (!pdev->p2pdma) {
		error = FUNC10(pdev);
		if (error)
			return error;
	}

	p2p_pgmap = FUNC4(&pdev->dev, sizeof(*p2p_pgmap), GFP_KERNEL);
	if (!p2p_pgmap)
		return -ENOMEM;

	pgmap = &p2p_pgmap->pgmap;
	pgmap->res.start = FUNC13(pdev, bar) + offset;
	pgmap->res.end = pgmap->res.start + size - 1;
	pgmap->res.flags = FUNC11(pdev, bar);
	pgmap->type = MEMORY_DEVICE_PCI_P2PDMA;

	p2p_pgmap->provider = pdev;
	p2p_pgmap->bus_offset = FUNC8(pdev, bar) -
		FUNC13(pdev, bar);

	addr = FUNC5(&pdev->dev, pgmap);
	if (FUNC0(addr)) {
		error = FUNC1(addr);
		goto pgmap_free;
	}

	error = FUNC7(pdev->p2pdma->pool, (unsigned long)addr,
			FUNC8(pdev, bar) + offset,
			FUNC14(&pgmap->res), FUNC2(&pdev->dev),
			pgmap->ref);
	if (error)
		goto pages_free;

	FUNC9(pdev, "added peer-to-peer DMA memory %pR\n",
		 &pgmap->res);

	return 0;

pages_free:
	FUNC6(&pdev->dev, pgmap);
pgmap_free:
	FUNC3(&pdev->dev, pgmap);
	return error;
}