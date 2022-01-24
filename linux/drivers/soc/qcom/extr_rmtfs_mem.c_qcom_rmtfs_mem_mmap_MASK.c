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
struct vm_area_struct {scalar_t__ vm_end; scalar_t__ vm_start; int /*<<< orphan*/  vm_page_prot; } ;
struct qcom_rmtfs_mem {scalar_t__ size; int addr; int /*<<< orphan*/  dev; } ;
struct file {struct qcom_rmtfs_mem* private_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct vm_area_struct*,scalar_t__,int,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct file *filep, struct vm_area_struct *vma)
{
	struct qcom_rmtfs_mem *rmtfs_mem = filep->private_data;

	if (vma->vm_end - vma->vm_start > rmtfs_mem->size) {
		FUNC0(&rmtfs_mem->dev,
			"vm_end[%lu] - vm_start[%lu] [%lu] > mem->size[%pa]\n",
			vma->vm_end, vma->vm_start,
			(vma->vm_end - vma->vm_start), &rmtfs_mem->size);
		return -EINVAL;
	}

	vma->vm_page_prot = FUNC1(vma->vm_page_prot);
	return FUNC2(vma,
			       vma->vm_start,
			       rmtfs_mem->addr >> PAGE_SHIFT,
			       vma->vm_end - vma->vm_start,
			       vma->vm_page_prot);
}