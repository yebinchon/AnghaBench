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
typedef  int xen_ulong_t ;
typedef  int xen_pfn_t ;
struct xen_add_to_physmap_range {unsigned int size; int /*<<< orphan*/  errs; int /*<<< orphan*/  idxs; int /*<<< orphan*/  gpfns; int /*<<< orphan*/  space; int /*<<< orphan*/  domid; } ;
struct resource {int /*<<< orphan*/  start; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DOMID_SELF ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (int /*<<< orphan*/ ,struct xen_add_to_physmap_range*) ; 
 scalar_t__ IORESOURCE_MEM ; 
 int /*<<< orphan*/  XENMAPSPACE_dev_mmio ; 
 int /*<<< orphan*/  XENMEM_add_to_physmap_range ; 
 int /*<<< orphan*/  XEN_PAGE_SIZE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int* FUNC3 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (struct resource const*) ; 
 scalar_t__ FUNC6 (struct resource const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct resource const*,unsigned int) ; 

__attribute__((used)) static int FUNC9(const struct resource *resources,
			       unsigned int count)
{
	unsigned int i, j, nr;
	int rc = 0;
	const struct resource *r;
	xen_pfn_t *gpfns;
	xen_ulong_t *idxs;
	int *errs;

	for (i = 0; i < count; i++) {
		struct xen_add_to_physmap_range xatp = {
			.domid = DOMID_SELF,
			.space = XENMAPSPACE_dev_mmio
		};

		r = &resources[i];
		nr = FUNC0(FUNC5(r), XEN_PAGE_SIZE);
		if ((FUNC6(r) != IORESOURCE_MEM) || (nr == 0))
			continue;

		gpfns = FUNC3(nr, sizeof(xen_pfn_t), GFP_KERNEL);
		idxs = FUNC3(nr, sizeof(xen_ulong_t), GFP_KERNEL);
		errs = FUNC3(nr, sizeof(int), GFP_KERNEL);
		if (!gpfns || !idxs || !errs) {
			FUNC4(gpfns);
			FUNC4(idxs);
			FUNC4(errs);
			rc = -ENOMEM;
			goto unmap;
		}

		for (j = 0; j < nr; j++) {
			/*
			 * The regions are always mapped 1:1 to DOM0 and this is
			 * fine because the memory map for DOM0 is the same as
			 * the host (except for the RAM).
			 */
			gpfns[j] = FUNC2(r->start) + j;
			idxs[j] = FUNC2(r->start) + j;
		}

		xatp.size = nr;

		FUNC7(xatp.gpfns, gpfns);
		FUNC7(xatp.idxs, idxs);
		FUNC7(xatp.errs, errs);

		rc = FUNC1(XENMEM_add_to_physmap_range, &xatp);
		FUNC4(gpfns);
		FUNC4(idxs);
		FUNC4(errs);
		if (rc)
			goto unmap;
	}

	return rc;

unmap:
	FUNC8(resources, i);
	return rc;
}