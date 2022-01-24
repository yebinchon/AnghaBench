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
typedef  int /*<<< orphan*/  xen_pfn_t ;
struct vm_area_struct {int vm_flags; int /*<<< orphan*/  vm_mm; } ;
struct remap_data {int nr_fgfn; unsigned int domid; int* err_ptr; int mapped; scalar_t__ index; struct page** pages; struct vm_area_struct* vma; int /*<<< orphan*/  prot; int /*<<< orphan*/ * fgfn; } ;
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  pgprot_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long FUNC1 (int,int /*<<< orphan*/ ) ; 
 unsigned long PAGE_SHIFT ; 
 int VM_IO ; 
 int VM_PFNMAP ; 
 int /*<<< orphan*/  XEN_PFN_PER_PAGE ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned long,unsigned long,int /*<<< orphan*/ ,struct remap_data*) ; 
 int /*<<< orphan*/  remap_pte_fn ; 

int FUNC3(struct vm_area_struct *vma,
			      unsigned long addr,
			      xen_pfn_t *gfn, int nr,
			      int *err_ptr, pgprot_t prot,
			      unsigned domid,
			      struct page **pages)
{
	int err;
	struct remap_data data;
	unsigned long range = FUNC1(nr, XEN_PFN_PER_PAGE) << PAGE_SHIFT;

	/* Kept here for the purpose of making sure code doesn't break
	   x86 PVOPS */
	FUNC0(!((vma->vm_flags & (VM_PFNMAP | VM_IO)) == (VM_PFNMAP | VM_IO)));

	data.fgfn = gfn;
	data.nr_fgfn = nr;
	data.prot  = prot;
	data.domid = domid;
	data.vma   = vma;
	data.pages = pages;
	data.index = 0;
	data.err_ptr = err_ptr;
	data.mapped = 0;

	err = FUNC2(vma->vm_mm, addr, range,
				  remap_pte_fn, &data);
	return err < 0 ? err : data.mapped;
}