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
struct vfio_iommu {int /*<<< orphan*/  dma_avail; } ;
struct vfio_dma {int /*<<< orphan*/  task; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vfio_dma*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vfio_iommu*,struct vfio_dma*) ; 
 int /*<<< orphan*/  FUNC3 (struct vfio_iommu*,struct vfio_dma*,int) ; 

__attribute__((used)) static void FUNC4(struct vfio_iommu *iommu, struct vfio_dma *dma)
{
	FUNC3(iommu, dma, true);
	FUNC2(iommu, dma);
	FUNC1(dma->task);
	FUNC0(dma);
	iommu->dma_avail++;
}