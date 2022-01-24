#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long u64 ;
struct nd_region {scalar_t__ ndr_start; int /*<<< orphan*/  bb; } ;
struct nd_pfn_sb {int /*<<< orphan*/  dataoff; } ;
struct TYPE_5__ {int /*<<< orphan*/  parent; } ;
struct nd_pfn {scalar_t__ mode; TYPE_2__ dev; struct nd_pfn_sb* pfn_sb; struct nd_namespace_common* ndns; } ;
struct TYPE_4__ {scalar_t__ start; } ;
struct nd_namespace_io {TYPE_1__ res; } ;
struct nd_namespace_common {int /*<<< orphan*/  dev; } ;
typedef  int sector_t ;

/* Variables and functions */
 unsigned long FUNC0 (int,int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ PFN_MODE_PMEM ; 
 int SZ_4K ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC7 (unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct nd_namespace_common*,unsigned long,void*,unsigned long,int /*<<< orphan*/ ) ; 
 void* FUNC9 (int /*<<< orphan*/ ) ; 
 struct nd_namespace_io* FUNC10 (int /*<<< orphan*/ *) ; 
 struct nd_region* FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct nd_pfn *nd_pfn)
{
	struct nd_region *nd_region = FUNC11(nd_pfn->dev.parent);
	struct nd_namespace_common *ndns = nd_pfn->ndns;
	void *zero_page = FUNC9(FUNC2(0));
	struct nd_pfn_sb *pfn_sb = nd_pfn->pfn_sb;
	int num_bad, meta_num, rc, bb_present;
	sector_t first_bad, meta_start;
	struct nd_namespace_io *nsio;

	if (nd_pfn->mode != PFN_MODE_PMEM)
		return 0;

	nsio = FUNC10(&ndns->dev);
	meta_start = (SZ_4K + sizeof(*pfn_sb)) >> 9;
	meta_num = (FUNC6(pfn_sb->dataoff) >> 9) - meta_start;

	do {
		unsigned long zero_len;
		u64 nsoff;

		bb_present = FUNC3(&nd_region->bb, meta_start,
				meta_num, &first_bad, &num_bad);
		if (bb_present) {
			FUNC4(&nd_pfn->dev, "meta: %x badblocks at %llx\n",
					num_bad, first_bad);
			nsoff = FUNC1((nd_region->ndr_start
					+ (first_bad << 9)) - nsio->res.start,
					PAGE_SIZE);
			zero_len = FUNC0(num_bad << 9, PAGE_SIZE);
			while (zero_len) {
				unsigned long chunk = FUNC7(zero_len, PAGE_SIZE);

				rc = FUNC8(ndns, nsoff, zero_page,
							chunk, 0);
				if (rc)
					break;

				zero_len -= chunk;
				nsoff += chunk;
			}
			if (rc) {
				FUNC5(&nd_pfn->dev,
					"error clearing %x badblocks at %llx\n",
					num_bad, first_bad);
				return rc;
			}
		}
	} while (bb_present);

	return 0;
}