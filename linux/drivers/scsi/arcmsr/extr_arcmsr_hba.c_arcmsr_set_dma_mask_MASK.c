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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct AdapterControlBlock {scalar_t__ adapter_type; struct pci_dev* pdev; } ;

/* Variables and functions */
 scalar_t__ ACB_ADAPTER_TYPE_A ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENXIO ; 
 scalar_t__ IS_DMA64 ; 
 int /*<<< orphan*/  dma_mask_64 ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(struct AdapterControlBlock *acb)
{
	struct pci_dev *pcidev = acb->pdev;

	if (IS_DMA64) {
		if (((acb->adapter_type == ACB_ADAPTER_TYPE_A) && !dma_mask_64) ||
		    FUNC2(&pcidev->dev, FUNC0(64)))
			goto	dma32;
		if (FUNC1(&pcidev->dev, FUNC0(64)) ||
		    FUNC3(&pcidev->dev, FUNC0(64))) {
			FUNC4("arcmsr: set DMA 64 mask failed\n");
			return -ENXIO;
		}
	} else {
dma32:
		if (FUNC2(&pcidev->dev, FUNC0(32)) ||
		    FUNC1(&pcidev->dev, FUNC0(32)) ||
		    FUNC3(&pcidev->dev, FUNC0(32))) {
			FUNC4("arcmsr: set DMA 32-bit mask failed\n");
			return -ENXIO;
		}
	}
	return 0;
}