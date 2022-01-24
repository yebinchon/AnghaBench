#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_fault_t ;
struct vm_fault {int pgoff; struct page* page; TYPE_3__* vma; } ;
struct uio_device {int /*<<< orphan*/  info_lock; TYPE_2__* info; } ;
struct page {int dummy; } ;
struct TYPE_6__ {struct uio_device* vm_private_data; } ;
struct TYPE_5__ {TYPE_1__* mem; } ;
struct TYPE_4__ {scalar_t__ memtype; scalar_t__ addr; } ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 scalar_t__ UIO_MEM_LOGICAL ; 
 int /*<<< orphan*/  VM_FAULT_SIGBUS ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_3__*) ; 
 struct page* FUNC4 (void*) ; 
 struct page* FUNC5 (void*) ; 

__attribute__((used)) static vm_fault_t FUNC6(struct vm_fault *vmf)
{
	struct uio_device *idev = vmf->vma->vm_private_data;
	struct page *page;
	unsigned long offset;
	void *addr;
	vm_fault_t ret = 0;
	int mi;

	FUNC1(&idev->info_lock);
	if (!idev->info) {
		ret = VM_FAULT_SIGBUS;
		goto out;
	}

	mi = FUNC3(vmf->vma);
	if (mi < 0) {
		ret = VM_FAULT_SIGBUS;
		goto out;
	}

	/*
	 * We need to subtract mi because userspace uses offset = N*PAGE_SIZE
	 * to use mem[N].
	 */
	offset = (vmf->pgoff - mi) << PAGE_SHIFT;

	addr = (void *)(unsigned long)idev->info->mem[mi].addr + offset;
	if (idev->info->mem[mi].memtype == UIO_MEM_LOGICAL)
		page = FUNC4(addr);
	else
		page = FUNC5(addr);
	FUNC0(page);
	vmf->page = page;

out:
	FUNC2(&idev->info_lock);

	return ret;
}