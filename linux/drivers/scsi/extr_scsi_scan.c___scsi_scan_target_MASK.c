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
typedef  int /*<<< orphan*/  u64 ;
struct scsi_target {int /*<<< orphan*/  dev; int /*<<< orphan*/  scsi_level; } ;
struct device {int dummy; } ;
struct Scsi_Host {unsigned int this_id; } ;
typedef  enum scsi_scan_mode { ____Placeholder_scsi_scan_mode } scsi_scan_mode ;
typedef  int /*<<< orphan*/  blist_flags_t ;

/* Variables and functions */
 int /*<<< orphan*/  SCAN_WILD_CARD ; 
 int SCSI_SCAN_LUN_PRESENT ; 
 int SCSI_SCAN_TARGET_PRESENT ; 
 struct Scsi_Host* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct scsi_target* FUNC2 (struct device*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_target*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_target*) ; 
 int FUNC5 (struct scsi_target*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct scsi_target*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_target*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct scsi_target*) ; 

__attribute__((used)) static void FUNC9(struct device *parent, unsigned int channel,
		unsigned int id, u64 lun, enum scsi_scan_mode rescan)
{
	struct Scsi_Host *shost = FUNC0(parent);
	blist_flags_t bflags = 0;
	int res;
	struct scsi_target *starget;

	if (shost->this_id == id)
		/*
		 * Don't scan the host adapter
		 */
		return;

	starget = FUNC2(parent, channel, id);
	if (!starget)
		return;
	FUNC3(starget);

	if (lun != SCAN_WILD_CARD) {
		/*
		 * Scan for a specific host/chan/id/lun.
		 */
		FUNC5(starget, lun, NULL, NULL, rescan, NULL);
		goto out_reap;
	}

	/*
	 * Scan LUN 0, if there is some response, scan further. Ideally, we
	 * would not configure LUN 0 until all LUNs are scanned.
	 */
	res = FUNC5(starget, 0, &bflags, NULL, rescan, NULL);
	if (res == SCSI_SCAN_LUN_PRESENT || res == SCSI_SCAN_TARGET_PRESENT) {
		if (FUNC6(starget, bflags, rescan) != 0)
			/*
			 * The REPORT LUN did not scan the target,
			 * do a sequential scan.
			 */
			FUNC7(starget, bflags,
						 starget->scsi_level, rescan);
	}

 out_reap:
	FUNC4(starget);
	/*
	 * paired with scsi_alloc_target(): determine if the target has
	 * any children at all and if not, nuke it
	 */
	FUNC8(starget);

	FUNC1(&starget->dev);
}