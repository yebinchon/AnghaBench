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
typedef  int uint64_t ;
struct vfio_iommu_type1_dma_map {size_t iova; unsigned long vaddr; size_t size; int flags; } ;
struct vfio_iommu {int /*<<< orphan*/  lock; int /*<<< orphan*/  dma_avail; } ;
struct vfio_dma {size_t iova; unsigned long vaddr; int prot; size_t size; int /*<<< orphan*/  pfn_list; int /*<<< orphan*/  lock_cap; int /*<<< orphan*/  task; } ;
typedef  size_t dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  group_leader; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_IPC_LOCK ; 
 int EEXIST ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IOMMU_READ ; 
 int IOMMU_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct vfio_iommu*) ; 
 int PAGE_MASK ; 
 int /*<<< orphan*/  RB_ROOT ; 
 int VFIO_DMA_MAP_FLAG_READ ; 
 int VFIO_DMA_MAP_FLAG_WRITE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct vfio_dma* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct vfio_iommu*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC9 (struct vfio_iommu*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC10 (struct vfio_iommu*,struct vfio_dma*) ; 
 int /*<<< orphan*/  FUNC11 (struct vfio_iommu*) ; 
 int FUNC12 (struct vfio_iommu*,struct vfio_dma*,size_t) ; 

__attribute__((used)) static int FUNC13(struct vfio_iommu *iommu,
			   struct vfio_iommu_type1_dma_map *map)
{
	dma_addr_t iova = map->iova;
	unsigned long vaddr = map->vaddr;
	size_t size = map->size;
	int ret = 0, prot = 0;
	uint64_t mask;
	struct vfio_dma *dma;

	/* Verify that none of our __u64 fields overflow */
	if (map->size != size || map->vaddr != vaddr || map->iova != iova)
		return -EINVAL;

	mask = ((uint64_t)1 << FUNC2(FUNC11(iommu))) - 1;

	FUNC1(mask & PAGE_MASK);

	/* READ/WRITE from device perspective */
	if (map->flags & VFIO_DMA_MAP_FLAG_WRITE)
		prot |= IOMMU_WRITE;
	if (map->flags & VFIO_DMA_MAP_FLAG_READ)
		prot |= IOMMU_READ;

	if (!prot || !size || (size | iova | vaddr) & mask)
		return -EINVAL;

	/* Don't allow IOVA or virtual address wrap */
	if (iova + size - 1 < iova || vaddr + size - 1 < vaddr)
		return -EINVAL;

	FUNC6(&iommu->lock);

	if (FUNC8(iommu, iova, size)) {
		ret = -EEXIST;
		goto out_unlock;
	}

	if (!iommu->dma_avail) {
		ret = -ENOSPC;
		goto out_unlock;
	}

	if (!FUNC9(iommu, iova, iova + size - 1)) {
		ret = -EINVAL;
		goto out_unlock;
	}

	dma = FUNC5(sizeof(*dma), GFP_KERNEL);
	if (!dma) {
		ret = -ENOMEM;
		goto out_unlock;
	}

	iommu->dma_avail--;
	dma->iova = iova;
	dma->vaddr = vaddr;
	dma->prot = prot;

	/*
	 * We need to be able to both add to a task's locked memory and test
	 * against the locked memory limit and we need to be able to do both
	 * outside of this call path as pinning can be asynchronous via the
	 * external interfaces for mdev devices.  RLIMIT_MEMLOCK requires a
	 * task_struct and VM locked pages requires an mm_struct, however
	 * holding an indefinite mm reference is not recommended, therefore we
	 * only hold a reference to a task.  We could hold a reference to
	 * current, however QEMU uses this call path through vCPU threads,
	 * which can be killed resulting in a NULL mm and failure in the unmap
	 * path when called via a different thread.  Avoid this problem by
	 * using the group_leader as threads within the same group require
	 * both CLONE_THREAD and CLONE_VM and will therefore use the same
	 * mm_struct.
	 *
	 * Previously we also used the task for testing CAP_IPC_LOCK at the
	 * time of pinning and accounting, however has_capability() makes use
	 * of real_cred, a copy-on-write field, so we can't guarantee that it
	 * matches group_leader, or in fact that it might not change by the
	 * time it's evaluated.  If a process were to call MAP_DMA with
	 * CAP_IPC_LOCK but later drop it, it doesn't make sense that they
	 * possibly see different results for an iommu_mapped vfio_dma vs
	 * externally mapped.  Therefore track CAP_IPC_LOCK in vfio_dma at the
	 * time of calling MAP_DMA.
	 */
	FUNC4(current->group_leader);
	dma->task = current->group_leader;
	dma->lock_cap = FUNC3(CAP_IPC_LOCK);

	dma->pfn_list = RB_ROOT;

	/* Insert zero-sized and grow as we map chunks of it */
	FUNC10(iommu, dma);

	/* Don't pin and map if container doesn't contain IOMMU capable domain*/
	if (!FUNC0(iommu))
		dma->size = size;
	else
		ret = FUNC12(iommu, dma, size);

out_unlock:
	FUNC7(&iommu->lock);
	return ret;
}