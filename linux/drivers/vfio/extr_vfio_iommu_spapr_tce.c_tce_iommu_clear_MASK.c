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
struct tce_container {scalar_t__ v2; int /*<<< orphan*/  mm; } ;
struct iommu_table {int it_level_size; scalar_t__ it_userspace; scalar_t__ it_indirect_levels; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int DMA_NONE ; 
 int /*<<< orphan*/ * FUNC0 (struct iommu_table*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct iommu_table*,unsigned long,unsigned long) ; 
 long FUNC3 (int /*<<< orphan*/ ,struct iommu_table*,unsigned long,unsigned long*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct tce_container*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct tce_container*,struct iommu_table*,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct tce_container *container,
		struct iommu_table *tbl,
		unsigned long entry, unsigned long pages)
{
	unsigned long oldhpa;
	long ret;
	enum dma_data_direction direction;
	unsigned long lastentry = entry + pages, firstentry = entry;

	for ( ; entry < lastentry; ++entry) {
		if (tbl->it_indirect_levels && tbl->it_userspace) {
			/*
			 * For multilevel tables, we can take a shortcut here
			 * and skip some TCEs as we know that the userspace
			 * addresses cache is a mirror of the real TCE table
			 * and if it is missing some indirect levels, then
			 * the hardware table does not have them allocated
			 * either and therefore does not require updating.
			 */
			__be64 *pua = FUNC0(tbl,
					entry);
			if (!pua) {
				/* align to level_size which is power of two */
				entry |= tbl->it_level_size - 1;
				continue;
			}
		}

		FUNC1();

		direction = DMA_NONE;
		oldhpa = 0;
		ret = FUNC3(container->mm, tbl, entry, &oldhpa,
				&direction);
		if (ret)
			continue;

		if (direction == DMA_NONE)
			continue;

		if (container->v2) {
			FUNC5(container, tbl, entry);
			continue;
		}

		FUNC4(container, oldhpa);
	}

	FUNC2(tbl, firstentry, pages);

	return 0;
}