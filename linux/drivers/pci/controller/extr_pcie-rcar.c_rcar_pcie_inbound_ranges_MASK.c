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
typedef  int u32 ;
struct rcar_pcie {int /*<<< orphan*/  dev; } ;
struct of_pci_range {int flags; int cpu_addr; int size; int pci_addr; } ;

/* Variables and functions */
 int EINVAL ; 
 int IORESOURCE_PREFETCH ; 
 int LAM_64BIT ; 
 int LAM_PREFETCH ; 
 int LAR_ENABLE ; 
 int MAX_NR_INBOUND_MAPS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 unsigned long FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int,unsigned long long) ; 
 int /*<<< orphan*/  FUNC7 (struct rcar_pcie*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct rcar_pcie *pcie,
				    struct of_pci_range *range,
				    int *index)
{
	u64 restype = range->flags;
	u64 cpu_addr = range->cpu_addr;
	u64 cpu_end = range->cpu_addr + range->size;
	u64 pci_addr = range->pci_addr;
	u32 flags = LAM_64BIT | LAR_ENABLE;
	u64 mask;
	u64 size;
	int idx = *index;

	if (restype & IORESOURCE_PREFETCH)
		flags |= LAM_PREFETCH;

	/*
	 * If the size of the range is larger than the alignment of the start
	 * address, we have to use multiple entries to perform the mapping.
	 */
	if (cpu_addr > 0) {
		unsigned long nr_zeros = FUNC3(cpu_addr);
		u64 alignment = 1ULL << nr_zeros;

		size = FUNC6(range->size, alignment);
	} else {
		size = range->size;
	}
	/* Hardware supports max 4GiB inbound region */
	size = FUNC6(size, 1ULL << 32);

	mask = FUNC8(size) - 1;
	mask &= ~0xf;

	while (cpu_addr < cpu_end) {
		/*
		 * Set up 64-bit inbound regions as the range parser doesn't
		 * distinguish between 32 and 64-bit types.
		 */
		FUNC7(pcie, FUNC5(pci_addr),
				   FUNC2(idx));
		FUNC7(pcie, FUNC5(cpu_addr), FUNC1(idx));
		FUNC7(pcie, FUNC5(mask) | flags,
				   FUNC0(idx));

		FUNC7(pcie, FUNC9(pci_addr),
				   FUNC2(idx + 1));
		FUNC7(pcie, FUNC9(cpu_addr),
				   FUNC1(idx + 1));
		FUNC7(pcie, 0, FUNC0(idx + 1));

		pci_addr += size;
		cpu_addr += size;
		idx += 2;

		if (idx > MAX_NR_INBOUND_MAPS) {
			FUNC4(pcie->dev, "Failed to map inbound regions!\n");
			return -EINVAL;
		}
	}
	*index = idx;

	return 0;
}