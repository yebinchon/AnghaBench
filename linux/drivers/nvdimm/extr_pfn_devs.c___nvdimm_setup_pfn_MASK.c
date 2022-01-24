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
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct vmem_altmap {scalar_t__ start; scalar_t__ end; void* end_pfn; scalar_t__ alloc; void* free; int /*<<< orphan*/  reserve; int /*<<< orphan*/  base_pfn; } ;
struct resource {scalar_t__ start; scalar_t__ end; void* end_pfn; scalar_t__ alloc; void* free; int /*<<< orphan*/  reserve; int /*<<< orphan*/  base_pfn; } ;
struct nd_pfn_sb {int /*<<< orphan*/  npfns; int /*<<< orphan*/  end_trunc; int /*<<< orphan*/  start_pad; int /*<<< orphan*/  dataoff; } ;
struct nd_pfn {scalar_t__ mode; void* npfns; struct nd_pfn_sb* pfn_sb; int /*<<< orphan*/  dev; struct nd_namespace_common* ndns; } ;
struct nd_namespace_io {struct vmem_altmap res; } ;
struct nd_namespace_common {int /*<<< orphan*/  dev; } ;
struct dev_pagemap {int /*<<< orphan*/  flags; struct vmem_altmap altmap; struct vmem_altmap res; } ;
typedef  scalar_t__ resource_size_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 scalar_t__ PFN_MODE_PMEM ; 
 scalar_t__ PFN_MODE_RAM ; 
 int /*<<< orphan*/  PGMAP_ALTMAP_VALID ; 
 void* FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,void*,void*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct vmem_altmap*,struct vmem_altmap*,int) ; 
 scalar_t__ FUNC8 (struct vmem_altmap*) ; 
 struct nd_namespace_io* FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct nd_pfn *nd_pfn, struct dev_pagemap *pgmap)
{
	struct resource *res = &pgmap->res;
	struct vmem_altmap *altmap = &pgmap->altmap;
	struct nd_pfn_sb *pfn_sb = nd_pfn->pfn_sb;
	u64 offset = FUNC6(pfn_sb->dataoff);
	u32 start_pad = FUNC1(pfn_sb->start_pad);
	u32 end_trunc = FUNC1(pfn_sb->end_trunc);
	u32 reserve = FUNC3();
	struct nd_namespace_common *ndns = nd_pfn->ndns;
	struct nd_namespace_io *nsio = FUNC9(&ndns->dev);
	resource_size_t base = nsio->res.start + start_pad;
	resource_size_t end = nsio->res.end - end_trunc;
	struct vmem_altmap __altmap = {
		.base_pfn = FUNC4(base),
		.reserve = FUNC5(base),
		.end_pfn = FUNC0(end),
	};

	FUNC7(res, &nsio->res, sizeof(*res));
	res->start += start_pad;
	res->end -= end_trunc;

	if (nd_pfn->mode == PFN_MODE_RAM) {
		if (offset < reserve)
			return -EINVAL;
		nd_pfn->npfns = FUNC6(pfn_sb->npfns);
	} else if (nd_pfn->mode == PFN_MODE_PMEM) {
		nd_pfn->npfns = FUNC0((FUNC8(res) - offset));
		if (FUNC6(nd_pfn->pfn_sb->npfns) > nd_pfn->npfns)
			FUNC2(&nd_pfn->dev,
					"number of pfns truncated from %lld to %ld\n",
					FUNC6(nd_pfn->pfn_sb->npfns),
					nd_pfn->npfns);
		FUNC7(altmap, &__altmap, sizeof(*altmap));
		altmap->free = FUNC0(offset - reserve);
		altmap->alloc = 0;
		pgmap->flags |= PGMAP_ALTMAP_VALID;
	} else
		return -ENXIO;

	return 0;
}