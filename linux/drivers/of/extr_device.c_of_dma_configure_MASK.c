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
typedef  int u64 ;
struct iommu_ops {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int* dma_mask; int coherent_dma_mask; unsigned long dma_pfn_offset; int bus_dma_mask; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int EINVAL ; 
 int ENODEV ; 
 int EPROBE_DEFER ; 
 scalar_t__ FUNC1 (struct iommu_ops const*) ; 
 unsigned long FUNC2 (int) ; 
 int FUNC3 (struct iommu_ops const*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int,int,struct iommu_ops const*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,...) ; 
 scalar_t__ FUNC8 (int) ; 
 int FUNC9 (int,int) ; 
 int FUNC10 (struct device_node*,int*,int*,int*) ; 
 int FUNC11 (struct device_node*) ; 
 struct iommu_ops* FUNC12 (struct device*,struct device_node*) ; 

int FUNC13(struct device *dev, struct device_node *np, bool force_dma)
{
	u64 dma_addr, paddr, size = 0;
	int ret;
	bool coherent;
	unsigned long offset;
	const struct iommu_ops *iommu;
	u64 mask;

	ret = FUNC10(np, &dma_addr, &paddr, &size);
	if (ret < 0) {
		/*
		 * For legacy reasons, we have to assume some devices need
		 * DMA configuration regardless of whether "dma-ranges" is
		 * correctly specified or not.
		 */
		if (!force_dma)
			return ret == -ENODEV ? 0 : ret;

		dma_addr = offset = 0;
	} else {
		offset = FUNC2(paddr - dma_addr);

		/*
		 * Add a work around to treat the size as mask + 1 in case
		 * it is defined in DT as a mask.
		 */
		if (size & 1) {
			FUNC7(dev, "Invalid size 0x%llx for dma-range\n",
				 size);
			size = size + 1;
		}

		if (!size) {
			FUNC6(dev, "Adjusted size 0x%llx invalid\n", size);
			return -EINVAL;
		}
		FUNC5(dev, "dma_pfn_offset(%#08lx)\n", offset);
	}

	/*
	 * If @dev is expected to be DMA-capable then the bus code that created
	 * it should have initialised its dma_mask pointer by this point. For
	 * now, we'll continue the legacy behaviour of coercing it to the
	 * coherent mask if not, but we'll no longer do so quietly.
	 */
	if (!dev->dma_mask) {
		FUNC7(dev, "DMA mask not set\n");
		dev->dma_mask = &dev->coherent_dma_mask;
	}

	if (!size && dev->coherent_dma_mask)
		size = FUNC9(dev->coherent_dma_mask, dev->coherent_dma_mask + 1);
	else if (!size)
		size = 1ULL << 32;

	dev->dma_pfn_offset = offset;

	/*
	 * Limit coherent and dma mask based on size and default mask
	 * set by the driver.
	 */
	mask = FUNC0(FUNC8(dma_addr + size - 1) + 1);
	dev->coherent_dma_mask &= mask;
	*dev->dma_mask &= mask;
	/* ...but only set bus mask if we found valid dma-ranges earlier */
	if (!ret)
		dev->bus_dma_mask = mask;

	coherent = FUNC11(np);
	FUNC5(dev, "device is%sdma coherent\n",
		coherent ? " " : " not ");

	iommu = FUNC12(dev, np);
	if (FUNC1(iommu) && FUNC3(iommu) == -EPROBE_DEFER)
		return -EPROBE_DEFER;

	FUNC5(dev, "device is%sbehind an iommu\n",
		iommu ? " " : " not ");

	FUNC4(dev, dma_addr, size, iommu, coherent);

	return 0;
}