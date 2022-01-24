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
typedef  scalar_t__ xen_pfn_t ;
typedef  int /*<<< orphan*/  phys_addr_t ;
typedef  int /*<<< orphan*/  pfn ;
struct TYPE_2__ {int count; scalar_t__* pfn; void* vaddr; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int XEN_PAGE_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 () ; 
 scalar_t__* FUNC2 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 
 TYPE_1__ xen_auto_xlat_grant_frames ; 
 void* FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 

int FUNC6(phys_addr_t addr)
{
	xen_pfn_t *pfn;
	unsigned int max_nr_gframes = FUNC1();
	unsigned int i;
	void *vaddr;

	if (xen_auto_xlat_grant_frames.count)
		return -EINVAL;

	vaddr = FUNC4(addr, XEN_PAGE_SIZE * max_nr_gframes);
	if (vaddr == NULL) {
		FUNC3("Failed to ioremap gnttab share frames (addr=%pa)!\n",
			&addr);
		return -ENOMEM;
	}
	pfn = FUNC2(max_nr_gframes, sizeof(pfn[0]), GFP_KERNEL);
	if (!pfn) {
		FUNC5(vaddr);
		return -ENOMEM;
	}
	for (i = 0; i < max_nr_gframes; i++)
		pfn[i] = FUNC0(addr) + i;

	xen_auto_xlat_grant_frames.vaddr = vaddr;
	xen_auto_xlat_grant_frames.pfn = pfn;
	xen_auto_xlat_grant_frames.count = max_nr_gframes;

	return 0;
}