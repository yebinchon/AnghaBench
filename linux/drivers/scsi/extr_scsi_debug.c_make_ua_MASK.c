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
struct sdebug_dev_info {int /*<<< orphan*/  uas_bm; } ;
struct scsi_cmnd {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_RESET_ASCQ ; 
 int /*<<< orphan*/  CAPACITY_CHANGED_ASCQ ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  LUNS_CHANGED_ASCQ ; 
 int /*<<< orphan*/  MICROCODE_CHANGED_ASCQ ; 
 int /*<<< orphan*/  MICROCODE_CHANGED_WO_RESET_ASCQ ; 
 int /*<<< orphan*/  MODE_CHANGED_ASCQ ; 
 int /*<<< orphan*/  POWER_ON_RESET_ASCQ ; 
 int SDEBUG_NUM_UAS ; 
#define  SDEBUG_UA_BUS_RESET 134 
#define  SDEBUG_UA_CAPACITY_CHANGED 133 
#define  SDEBUG_UA_LUNS_CHANGED 132 
#define  SDEBUG_UA_MICROCODE_CHANGED 131 
#define  SDEBUG_UA_MICROCODE_CHANGED_WO_RESET 130 
#define  SDEBUG_UA_MODE_CHANGED 129 
#define  SDEBUG_UA_POR 128 
 int /*<<< orphan*/  TARGET_CHANGED_ASC ; 
 int /*<<< orphan*/  UA_CHANGED_ASC ; 
 int /*<<< orphan*/  UA_RESET_ASC ; 
 int /*<<< orphan*/  UNIT_ATTENTION ; 
 int check_condition_result ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sdebug_dev_info*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_cmnd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  my_name ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int sdebug_scsi_level ; 
 scalar_t__ sdebug_verbose ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int FUNC6(struct scsi_cmnd *scp, struct sdebug_dev_info *devip)
{
	int k;

	k = FUNC2(devip->uas_bm, SDEBUG_NUM_UAS);
	if (k != SDEBUG_NUM_UAS) {
		const char *cp = NULL;

		switch (k) {
		case SDEBUG_UA_POR:
			FUNC3(scp, UNIT_ATTENTION, UA_RESET_ASC,
					POWER_ON_RESET_ASCQ);
			if (sdebug_verbose)
				cp = "power on reset";
			break;
		case SDEBUG_UA_BUS_RESET:
			FUNC3(scp, UNIT_ATTENTION, UA_RESET_ASC,
					BUS_RESET_ASCQ);
			if (sdebug_verbose)
				cp = "bus reset";
			break;
		case SDEBUG_UA_MODE_CHANGED:
			FUNC3(scp, UNIT_ATTENTION, UA_CHANGED_ASC,
					MODE_CHANGED_ASCQ);
			if (sdebug_verbose)
				cp = "mode parameters changed";
			break;
		case SDEBUG_UA_CAPACITY_CHANGED:
			FUNC3(scp, UNIT_ATTENTION, UA_CHANGED_ASC,
					CAPACITY_CHANGED_ASCQ);
			if (sdebug_verbose)
				cp = "capacity data changed";
			break;
		case SDEBUG_UA_MICROCODE_CHANGED:
			FUNC3(scp, UNIT_ATTENTION,
					TARGET_CHANGED_ASC,
					MICROCODE_CHANGED_ASCQ);
			if (sdebug_verbose)
				cp = "microcode has been changed";
			break;
		case SDEBUG_UA_MICROCODE_CHANGED_WO_RESET:
			FUNC3(scp, UNIT_ATTENTION,
					TARGET_CHANGED_ASC,
					MICROCODE_CHANGED_WO_RESET_ASCQ);
			if (sdebug_verbose)
				cp = "microcode has been changed without reset";
			break;
		case SDEBUG_UA_LUNS_CHANGED:
			/*
			 * SPC-3 behavior is to report a UNIT ATTENTION with
			 * ASC/ASCQ REPORTED LUNS DATA HAS CHANGED on every LUN
			 * on the target, until a REPORT LUNS command is
			 * received.  SPC-4 behavior is to report it only once.
			 * NOTE:  sdebug_scsi_level does not use the same
			 * values as struct scsi_device->scsi_level.
			 */
			if (sdebug_scsi_level >= 6)	/* SPC-4 and above */
				FUNC1(devip);
			FUNC3(scp, UNIT_ATTENTION,
					TARGET_CHANGED_ASC,
					LUNS_CHANGED_ASCQ);
			if (sdebug_verbose)
				cp = "reported luns data has changed";
			break;
		default:
			FUNC4("unexpected unit attention code=%d\n", k);
			if (sdebug_verbose)
				cp = "unknown";
			break;
		}
		FUNC0(k, devip->uas_bm);
		if (sdebug_verbose)
			FUNC5(KERN_INFO, scp->device,
				   "%s reports: Unit attention: %s\n",
				   my_name, cp);
		return check_condition_result;
	}
	return 0;
}