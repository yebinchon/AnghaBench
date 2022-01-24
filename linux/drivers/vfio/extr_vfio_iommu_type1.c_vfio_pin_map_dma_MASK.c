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
struct vfio_iommu {int dummy; } ;
struct vfio_dma {unsigned long vaddr; int iommu_mapped; scalar_t__ size; int /*<<< orphan*/  prot; scalar_t__ iova; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 size_t PAGE_SHIFT ; 
 int /*<<< orphan*/  RLIMIT_MEMLOCK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct vfio_iommu*,scalar_t__,unsigned long,long,int /*<<< orphan*/ ) ; 
 long FUNC3 (struct vfio_dma*,scalar_t__,size_t,unsigned long*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct vfio_iommu*,struct vfio_dma*) ; 
 int /*<<< orphan*/  FUNC5 (struct vfio_dma*,scalar_t__,unsigned long,long,int) ; 

__attribute__((used)) static int FUNC6(struct vfio_iommu *iommu, struct vfio_dma *dma,
			    size_t map_size)
{
	dma_addr_t iova = dma->iova;
	unsigned long vaddr = dma->vaddr;
	size_t size = map_size;
	long npage;
	unsigned long pfn, limit = FUNC1(RLIMIT_MEMLOCK) >> PAGE_SHIFT;
	int ret = 0;

	while (size) {
		/* Pin a contiguous chunk of memory */
		npage = FUNC3(dma, vaddr + dma->size,
					      size >> PAGE_SHIFT, &pfn, limit);
		if (npage <= 0) {
			FUNC0(!npage);
			ret = (int)npage;
			break;
		}

		/* Map it! */
		ret = FUNC2(iommu, iova + dma->size, pfn, npage,
				     dma->prot);
		if (ret) {
			FUNC5(dma, iova + dma->size, pfn,
						npage, true);
			break;
		}

		size -= npage << PAGE_SHIFT;
		dma->size += npage << PAGE_SHIFT;
	}

	dma->iommu_mapped = true;

	if (ret)
		FUNC4(iommu, dma);

	return ret;
}