#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct TYPE_8__ {scalar_t__* dma_mask; scalar_t__ coherent_dma_mask; } ;
struct pci_dev {TYPE_2__ dev; } ;
struct megasas_instance {scalar_t__ adapter_type; int consistent_mask_64bit; TYPE_1__* reg_set; struct pci_dev* pdev; } ;
struct TYPE_7__ {int /*<<< orphan*/  outbound_scratch_pad_1; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ IS_DMA64 ; 
 int MR_CAN_HANDLE_64_BIT_DMA_OFFSET ; 
 scalar_t__ VENTURA_SERIES ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,char*,char*) ; 
 scalar_t__ FUNC3 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC4 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC5 (TYPE_2__*,scalar_t__) ; 
 int FUNC6 (struct megasas_instance*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(struct megasas_instance *instance)
{
	u64 consistent_mask;
	struct pci_dev *pdev;
	u32 scratch_pad_1;

	pdev = instance->pdev;
	consistent_mask = (instance->adapter_type >= VENTURA_SERIES) ?
				FUNC0(63) : FUNC0(32);

	if (IS_DMA64) {
		if (FUNC4(&pdev->dev, FUNC0(63)) &&
		    FUNC5(&pdev->dev, FUNC0(32)))
			goto fail_set_dma_mask;

		if ((*pdev->dev.dma_mask == FUNC0(63)) &&
		    (FUNC3(&pdev->dev, consistent_mask) &&
		     FUNC5(&pdev->dev, FUNC0(32)))) {
			/*
			 * If 32 bit DMA mask fails, then try for 64 bit mask
			 * for FW capable of handling 64 bit DMA.
			 */
			scratch_pad_1 = FUNC6
				(instance, &instance->reg_set->outbound_scratch_pad_1);

			if (!(scratch_pad_1 & MR_CAN_HANDLE_64_BIT_DMA_OFFSET))
				goto fail_set_dma_mask;
			else if (FUNC5(&pdev->dev,
							   FUNC0(63)))
				goto fail_set_dma_mask;
		}
	} else if (FUNC5(&pdev->dev, FUNC0(32)))
		goto fail_set_dma_mask;

	if (pdev->dev.coherent_dma_mask == FUNC0(32))
		instance->consistent_mask_64bit = false;
	else
		instance->consistent_mask_64bit = true;

	FUNC2(&pdev->dev, "%s bit DMA mask and %s bit consistent mask\n",
		 ((*pdev->dev.dma_mask == FUNC0(63)) ? "63" : "32"),
		 (instance->consistent_mask_64bit ? "63" : "32"));

	return 0;

fail_set_dma_mask:
	FUNC1(&pdev->dev, "Failed to set DMA mask\n");
	return -1;

}