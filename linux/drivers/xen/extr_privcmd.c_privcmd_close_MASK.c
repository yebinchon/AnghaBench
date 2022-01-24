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
struct vm_area_struct {int vm_end; int vm_start; struct page** vm_private_data; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  XENFEAT_auto_translated_physmap ; 
 int XEN_PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int,struct page**) ; 
 int /*<<< orphan*/  FUNC1 (struct page**) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int FUNC3 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct vm_area_struct*,int,struct page**) ; 

__attribute__((used)) static void FUNC6(struct vm_area_struct *vma)
{
	struct page **pages = vma->vm_private_data;
	int numpgs = FUNC3(vma);
	int numgfns = (vma->vm_end - vma->vm_start) >> XEN_PAGE_SHIFT;
	int rc;

	if (!FUNC4(XENFEAT_auto_translated_physmap) || !numpgs || !pages)
		return;

	rc = FUNC5(vma, numgfns, pages);
	if (rc == 0)
		FUNC0(numpgs, pages);
	else
		FUNC2("unable to unmap MFN range: leaking %d pages. rc=%d\n",
			numpgs, rc);
	FUNC1(pages);
}