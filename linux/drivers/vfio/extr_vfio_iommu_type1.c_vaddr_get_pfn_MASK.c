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
struct vm_area_struct {int vm_flags; unsigned long vm_start; unsigned long vm_pgoff; } ;
struct page {int dummy; } ;
struct mm_struct {int /*<<< orphan*/  mmap_sem; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 unsigned int FOLL_LONGTERM ; 
 unsigned int FOLL_WRITE ; 
 int IOMMU_WRITE ; 
 unsigned long PAGE_SHIFT ; 
 int VM_PFNMAP ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct vm_area_struct* FUNC1 (struct mm_struct*,unsigned long,unsigned long) ; 
 int FUNC2 (unsigned long,int,unsigned int,struct page**,struct vm_area_struct**) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct mm_struct*,unsigned long,int,unsigned int,struct page**,struct vm_area_struct**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (unsigned long) ; 
 unsigned long FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 unsigned long FUNC7 (unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct vm_area_struct*) ; 

__attribute__((used)) static int FUNC10(struct mm_struct *mm, unsigned long vaddr,
			 int prot, unsigned long *pfn)
{
	struct page *page[1];
	struct vm_area_struct *vma;
	struct vm_area_struct *vmas[1];
	unsigned int flags = 0;
	int ret;

	if (prot & IOMMU_WRITE)
		flags |= FOLL_WRITE;

	FUNC0(&mm->mmap_sem);
	if (mm == current->mm) {
		ret = FUNC2(vaddr, 1, flags | FOLL_LONGTERM, page,
				     vmas);
	} else {
		ret = FUNC3(NULL, mm, vaddr, 1, flags, page,
					    vmas, NULL);
		/*
		 * The lifetime of a vaddr_get_pfn() page pin is
		 * userspace-controlled. In the fs-dax case this could
		 * lead to indefinite stalls in filesystem operations.
		 * Disallow attempts to pin fs-dax pages via this
		 * interface.
		 */
		if (ret > 0 && FUNC9(vmas[0])) {
			ret = -EOPNOTSUPP;
			FUNC6(page[0]);
		}
	}
	FUNC8(&mm->mmap_sem);

	if (ret == 1) {
		*pfn = FUNC5(page[0]);
		return 0;
	}

	FUNC0(&mm->mmap_sem);

	vaddr = FUNC7(vaddr);

	vma = FUNC1(mm, vaddr, vaddr + 1);

	if (vma && vma->vm_flags & VM_PFNMAP) {
		*pfn = ((vaddr - vma->vm_start) >> PAGE_SHIFT) + vma->vm_pgoff;
		if (FUNC4(*pfn))
			ret = 0;
	}

	FUNC8(&mm->mmap_sem);
	return ret;
}