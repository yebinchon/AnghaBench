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
struct vfio_iommu {int /*<<< orphan*/  lock; int /*<<< orphan*/  v2; } ;
struct vfio_dma {int dummy; } ;
typedef  unsigned long dma_addr_t ;

/* Variables and functions */
 int EACCES ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct vfio_iommu*) ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct vfio_dma* FUNC3 (struct vfio_iommu*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vfio_dma*,unsigned long,int) ; 

__attribute__((used)) static int FUNC5(void *iommu_data,
					unsigned long *user_pfn,
					int npage)
{
	struct vfio_iommu *iommu = iommu_data;
	bool do_accounting;
	int i;

	if (!iommu || !user_pfn)
		return -EINVAL;

	/* Supported for v2 version only */
	if (!iommu->v2)
		return -EACCES;

	FUNC1(&iommu->lock);

	do_accounting = !FUNC0(iommu);
	for (i = 0; i < npage; i++) {
		struct vfio_dma *dma;
		dma_addr_t iova;

		iova = user_pfn[i] << PAGE_SHIFT;
		dma = FUNC3(iommu, iova, PAGE_SIZE);
		if (!dma)
			goto unpin_exit;
		FUNC4(dma, iova, do_accounting);
	}

unpin_exit:
	FUNC2(&iommu->lock);
	return i > npage ? npage : (i > 0 ? i : -EINVAL);
}