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
struct t10_pi_tuple {scalar_t__ app_tag; } ;
struct scsi_cmnd {int dummy; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_cmnd*,scalar_t__,unsigned int,int) ; 
 int /*<<< orphan*/  dif_errors ; 
 struct t10_pi_tuple* FUNC2 (scalar_t__) ; 
 int FUNC3 (struct t10_pi_tuple*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dix_reads ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct scsi_cmnd *SCpnt, sector_t start_sec,
			    unsigned int sectors, u32 ei_lba)
{
	unsigned int i;
	struct t10_pi_tuple *sdt;
	sector_t sector;

	for (i = 0; i < sectors; i++, ei_lba++) {
		int ret;

		sector = start_sec + i;
		sdt = FUNC2(sector);

		if (sdt->app_tag == FUNC0(0xffff))
			continue;

		ret = FUNC3(sdt, FUNC4(sector), sector, ei_lba);
		if (ret) {
			dif_errors++;
			return ret;
		}
	}

	FUNC1(SCpnt, start_sec, sectors, true);
	dix_reads++;

	return 0;
}