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
typedef  int /*<<< orphan*/  u32 ;
struct rproc_mem_entry {int len; void* va; scalar_t__ dma; int /*<<< orphan*/  da; int /*<<< orphan*/  node; int /*<<< orphan*/  flags; } ;
struct device {struct device* parent; } ;
struct rproc {int /*<<< orphan*/  mappings; scalar_t__ domain; struct device dev; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FW_RSC_ADDR_ANY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HIGH_BITS_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,void*,scalar_t__*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 void* FUNC3 (struct device*,int,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int,void*,scalar_t__) ; 
 int FUNC5 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rproc_mem_entry*) ; 
 struct rproc_mem_entry* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct rproc *rproc,
				struct rproc_mem_entry *mem)
{
	struct rproc_mem_entry *mapping = NULL;
	struct device *dev = &rproc->dev;
	dma_addr_t dma;
	void *va;
	int ret;

	va = FUNC3(dev->parent, mem->len, &dma, GFP_KERNEL);
	if (!va) {
		FUNC1(dev->parent,
			"failed to allocate dma memory: len 0x%x\n", mem->len);
		return -ENOMEM;
	}

	FUNC0(dev, "carveout va %pK, dma %pad, len 0x%x\n",
		va, &dma, mem->len);

	if (mem->da != FW_RSC_ADDR_ANY && !rproc->domain) {
		/*
		 * Check requested da is equal to dma address
		 * and print a warn message in case of missalignment.
		 * Don't stop rproc_start sequence as coprocessor may
		 * build pa to da translation on its side.
		 */
		if (mem->da != (u32)dma)
			FUNC2(dev->parent,
				 "Allocated carveout doesn't fit device address request\n");
	}

	/*
	 * Ok, this is non-standard.
	 *
	 * Sometimes we can't rely on the generic iommu-based DMA API
	 * to dynamically allocate the device address and then set the IOMMU
	 * tables accordingly, because some remote processors might
	 * _require_ us to use hard coded device addresses that their
	 * firmware was compiled with.
	 *
	 * In this case, we must use the IOMMU API directly and map
	 * the memory to the device address as expected by the remote
	 * processor.
	 *
	 * Obviously such remote processor devices should not be configured
	 * to use the iommu-based DMA API: we expect 'dma' to contain the
	 * physical address in this case.
	 */
	if (mem->da != FW_RSC_ADDR_ANY && rproc->domain) {
		mapping = FUNC7(sizeof(*mapping), GFP_KERNEL);
		if (!mapping) {
			ret = -ENOMEM;
			goto dma_free;
		}

		ret = FUNC5(rproc->domain, mem->da, dma, mem->len,
				mem->flags);
		if (ret) {
			FUNC1(dev, "iommu_map failed: %d\n", ret);
			goto free_mapping;
		}

		/*
		 * We'll need this info later when we'll want to unmap
		 * everything (e.g. on shutdown).
		 *
		 * We can't trust the remote processor not to change the
		 * resource table, so we must maintain this info independently.
		 */
		mapping->da = mem->da;
		mapping->len = mem->len;
		FUNC8(&mapping->node, &rproc->mappings);

		FUNC0(dev, "carveout mapped 0x%x to %pad\n",
			mem->da, &dma);
	}

	if (mem->da == FW_RSC_ADDR_ANY) {
		/* Update device address as undefined by requester */
		if ((u64)dma & HIGH_BITS_MASK)
			FUNC2(dev, "DMA address cast in 32bit to fit resource table format\n");

		mem->da = (u32)dma;
	}

	mem->dma = dma;
	mem->va = va;

	return 0;

free_mapping:
	FUNC6(mapping);
dma_free:
	FUNC4(dev->parent, mem->len, va, dma);
	return ret;
}