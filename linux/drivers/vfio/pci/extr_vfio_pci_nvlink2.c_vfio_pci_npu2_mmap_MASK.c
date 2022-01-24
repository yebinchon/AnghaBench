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
struct vm_area_struct {unsigned long vm_end; unsigned long vm_start; int /*<<< orphan*/  vm_page_prot; int /*<<< orphan*/  vm_flags; } ;
struct vfio_pci_region {struct vfio_pci_npu2_data* data; } ;
struct vfio_pci_npu2_data {int mmio_atsd; } ;
struct vfio_pci_device {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int EINVAL ; 
 int PAGE_SHIFT ; 
 unsigned long PAGE_SIZE ; 
 int /*<<< orphan*/  VM_PFNMAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct vm_area_struct*,unsigned long,int,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,unsigned long,unsigned long,int) ; 

__attribute__((used)) static int FUNC3(struct vfio_pci_device *vdev,
		struct vfio_pci_region *region, struct vm_area_struct *vma)
{
	int ret;
	struct vfio_pci_npu2_data *data = region->data;
	unsigned long req_len = vma->vm_end - vma->vm_start;

	if (req_len != PAGE_SIZE)
		return -EINVAL;

	vma->vm_flags |= VM_PFNMAP;
	vma->vm_page_prot = FUNC0(vma->vm_page_prot);

	ret = FUNC1(vma, vma->vm_start, data->mmio_atsd >> PAGE_SHIFT,
			req_len, vma->vm_page_prot);
	FUNC2(vdev->pdev, data->mmio_atsd, vma->vm_start,
			vma->vm_end - vma->vm_start, ret);

	return ret;
}