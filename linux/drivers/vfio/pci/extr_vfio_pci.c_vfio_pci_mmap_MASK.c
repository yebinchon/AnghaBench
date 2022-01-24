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
typedef  scalar_t__ u64 ;
struct vm_area_struct {unsigned int vm_pgoff; scalar_t__ vm_end; scalar_t__ vm_start; int vm_flags; int /*<<< orphan*/  vm_page_prot; struct vfio_pci_device* vm_private_data; } ;
struct vfio_pci_region {int flags; TYPE_1__* ops; } ;
struct vfio_pci_device {scalar_t__* barmap; int /*<<< orphan*/ * bar_mmap_supported; struct vfio_pci_region* region; struct pci_dev* pdev; } ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int (* mmap ) (struct vfio_pci_device*,struct vfio_pci_region*,struct vm_area_struct*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PAGE_SHIFT ; 
 unsigned int VFIO_PCI_NUM_REGIONS ; 
 unsigned int VFIO_PCI_OFFSET_SHIFT ; 
 unsigned int VFIO_PCI_ROM_REGION_INDEX ; 
 int VFIO_REGION_INFO_FLAG_MMAP ; 
 int VM_SHARED ; 
 scalar_t__ FUNC1 (struct pci_dev*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int) ; 
 int FUNC3 (struct pci_dev*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,unsigned int) ; 
 scalar_t__ FUNC5 (struct pci_dev*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct vm_area_struct*,scalar_t__,unsigned int,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct vfio_pci_device*,struct vfio_pci_region*,struct vm_area_struct*) ; 

__attribute__((used)) static int FUNC9(void *device_data, struct vm_area_struct *vma)
{
	struct vfio_pci_device *vdev = device_data;
	struct pci_dev *pdev = vdev->pdev;
	unsigned int index;
	u64 phys_len, req_len, pgoff, req_start;
	int ret;

	index = vma->vm_pgoff >> (VFIO_PCI_OFFSET_SHIFT - PAGE_SHIFT);

	if (vma->vm_end < vma->vm_start)
		return -EINVAL;
	if ((vma->vm_flags & VM_SHARED) == 0)
		return -EINVAL;
	if (index >= VFIO_PCI_NUM_REGIONS) {
		int regnum = index - VFIO_PCI_NUM_REGIONS;
		struct vfio_pci_region *region = vdev->region + regnum;

		if (region && region->ops && region->ops->mmap &&
		    (region->flags & VFIO_REGION_INFO_FLAG_MMAP))
			return region->ops->mmap(vdev, region, vma);
		return -EINVAL;
	}
	if (index >= VFIO_PCI_ROM_REGION_INDEX)
		return -EINVAL;
	if (!vdev->bar_mmap_supported[index])
		return -EINVAL;

	phys_len = FUNC0(FUNC4(pdev, index));
	req_len = vma->vm_end - vma->vm_start;
	pgoff = vma->vm_pgoff &
		((1U << (VFIO_PCI_OFFSET_SHIFT - PAGE_SHIFT)) - 1);
	req_start = pgoff << PAGE_SHIFT;

	if (req_start + req_len > phys_len)
		return -EINVAL;

	/*
	 * Even though we don't make use of the barmap for the mmap,
	 * we need to request the region and the barmap tracks that.
	 */
	if (!vdev->barmap[index]) {
		ret = FUNC3(pdev,
						   1 << index, "vfio-pci");
		if (ret)
			return ret;

		vdev->barmap[index] = FUNC1(pdev, index, 0);
		if (!vdev->barmap[index]) {
			FUNC2(pdev, 1 << index);
			return -ENOMEM;
		}
	}

	vma->vm_private_data = vdev;
	vma->vm_page_prot = FUNC6(vma->vm_page_prot);
	vma->vm_pgoff = (FUNC5(pdev, index) >> PAGE_SHIFT) + pgoff;

	return FUNC7(vma, vma->vm_start, vma->vm_pgoff,
			       req_len, vma->vm_page_prot);
}