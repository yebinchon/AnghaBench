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
struct sg_mapping_iter {void* addr; int /*<<< orphan*/  length; } ;
struct scsi_cmnd {int dummy; } ;
typedef  size_t sector_t ;

/* Variables and functions */
 int SG_MITER_ATOMIC ; 
 int SG_MITER_FROM_SG ; 
 int SG_MITER_TO_SG ; 
 void* FUNC0 (size_t) ; 
 void* dif_storep ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,size_t) ; 
 size_t FUNC2 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_cmnd*) ; 
 int sdebug_store_sectors ; 
 scalar_t__ FUNC5 (struct sg_mapping_iter*) ; 
 int /*<<< orphan*/  FUNC6 (struct sg_mapping_iter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sg_mapping_iter*) ; 

__attribute__((used)) static void FUNC8(struct scsi_cmnd *SCpnt, sector_t sector,
			  unsigned int sectors, bool read)
{
	size_t resid;
	void *paddr;
	const void *dif_store_end = dif_storep + sdebug_store_sectors;
	struct sg_mapping_iter miter;

	/* Bytes of protection data to copy into sgl */
	resid = sectors * sizeof(*dif_storep);

	FUNC6(&miter, FUNC4(SCpnt),
			FUNC3(SCpnt), SG_MITER_ATOMIC |
			(read ? SG_MITER_TO_SG : SG_MITER_FROM_SG));

	while (FUNC5(&miter) && resid > 0) {
		size_t len = FUNC2(miter.length, resid);
		void *start = FUNC0(sector);
		size_t rest = 0;

		if (dif_store_end < start + len)
			rest = start + len - dif_store_end;

		paddr = miter.addr;

		if (read)
			FUNC1(paddr, start, len - rest);
		else
			FUNC1(start, paddr, len - rest);

		if (rest) {
			if (read)
				FUNC1(paddr + len - rest, dif_storep, rest);
			else
				FUNC1(dif_storep, paddr + len - rest, rest);
		}

		sector += len / sizeof(*dif_storep);
		resid -= len;
	}
	FUNC7(&miter);
}