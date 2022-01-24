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
typedef  int /*<<< orphan*/  u32 ;
struct t10_pi_tuple {int dummy; } ;
struct sg_mapping_iter {int length; int consumed; struct t10_pi_tuple* addr; } ;
struct scsi_cmnd {int dummy; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int SG_MITER_ATOMIC ; 
 int SG_MITER_FROM_SG ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_cmnd*,int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/  dif_errors ; 
 int FUNC3 (struct t10_pi_tuple*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dix_writes ; 
 int /*<<< orphan*/  FUNC4 (void*,scalar_t__) ; 
 scalar_t__ FUNC5 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC7 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC8 (struct scsi_cmnd*) ; 
 scalar_t__ sdebug_sector_size ; 
 scalar_t__ FUNC9 (struct sg_mapping_iter*) ; 
 int /*<<< orphan*/  FUNC10 (struct sg_mapping_iter*,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sg_mapping_iter*) ; 

__attribute__((used)) static int FUNC12(struct scsi_cmnd *SCpnt, sector_t start_sec,
			     unsigned int sectors, u32 ei_lba)
{
	int ret;
	struct t10_pi_tuple *sdt;
	void *daddr;
	sector_t sector = start_sec;
	int ppage_offset;
	int dpage_offset;
	struct sg_mapping_iter diter;
	struct sg_mapping_iter piter;

	FUNC0(FUNC7(SCpnt) == 0);
	FUNC0(FUNC5(SCpnt) == 0);

	FUNC10(&piter, FUNC6(SCpnt),
			FUNC5(SCpnt),
			SG_MITER_ATOMIC | SG_MITER_FROM_SG);
	FUNC10(&diter, FUNC8(SCpnt), FUNC7(SCpnt),
			SG_MITER_ATOMIC | SG_MITER_FROM_SG);

	/* For each protection page */
	while (FUNC9(&piter)) {
		dpage_offset = 0;
		if (FUNC1(!FUNC9(&diter))) {
			ret = 0x01;
			goto out;
		}

		for (ppage_offset = 0; ppage_offset < piter.length;
		     ppage_offset += sizeof(struct t10_pi_tuple)) {
			/* If we're at the end of the current
			 * data page advance to the next one
			 */
			if (dpage_offset >= diter.length) {
				if (FUNC1(!FUNC9(&diter))) {
					ret = 0x01;
					goto out;
				}
				dpage_offset = 0;
			}

			sdt = piter.addr + ppage_offset;
			daddr = diter.addr + dpage_offset;

			ret = FUNC3(sdt, daddr, sector, ei_lba);
			if (ret) {
				FUNC4(daddr, sdebug_sector_size);
				goto out;
			}

			sector++;
			ei_lba++;
			dpage_offset += sdebug_sector_size;
		}
		diter.consumed = dpage_offset;
		FUNC11(&diter);
	}
	FUNC11(&piter);

	FUNC2(SCpnt, start_sec, sectors, false);
	dix_writes++;

	return 0;

out:
	dif_errors++;
	FUNC11(&diter);
	FUNC11(&piter);
	return ret;
}