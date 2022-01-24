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
struct scsi_sense_hdr {int dummy; } ;
struct scsi_device {int dummy; } ;
struct alua_port_group {int tpgs; int state; int flags; int /*<<< orphan*/  group_id; int /*<<< orphan*/  pref; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALUA_DH_NAME ; 
 int ALUA_OPTIMIZE_STPG ; 
 scalar_t__ DRIVER_ERROR ; 
 int /*<<< orphan*/  KERN_INFO ; 
#define  SCSI_ACCESS_STATE_ACTIVE 133 
#define  SCSI_ACCESS_STATE_OFFLINE 132 
#define  SCSI_ACCESS_STATE_OPTIMAL 131 
#define  SCSI_ACCESS_STATE_STANDBY 130 
#define  SCSI_ACCESS_STATE_TRANSITIONING 129 
#define  SCSI_ACCESS_STATE_UNAVAILABLE 128 
 int SCSI_DH_DEV_TEMP_BUSY ; 
 int SCSI_DH_IO ; 
 int SCSI_DH_NOSYS ; 
 int SCSI_DH_OK ; 
 int SCSI_DH_RETRY ; 
 int TPGS_MODE_EXPLICIT ; 
 int TPGS_MODE_IMPLICIT ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_device*,int /*<<< orphan*/ ,struct scsi_sense_hdr*) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_sense_hdr*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct scsi_device*,char*,int /*<<< orphan*/ ,...) ; 
 int FUNC4 (struct scsi_device*,int /*<<< orphan*/ ,struct scsi_sense_hdr*) ; 

__attribute__((used)) static unsigned FUNC5(struct scsi_device *sdev, struct alua_port_group *pg)
{
	int retval;
	struct scsi_sense_hdr sense_hdr;

	if (!(pg->tpgs & TPGS_MODE_EXPLICIT)) {
		/* Only implicit ALUA supported, retry */
		return SCSI_DH_RETRY;
	}
	switch (pg->state) {
	case SCSI_ACCESS_STATE_OPTIMAL:
		return SCSI_DH_OK;
	case SCSI_ACCESS_STATE_ACTIVE:
		if ((pg->flags & ALUA_OPTIMIZE_STPG) &&
		    !pg->pref &&
		    (pg->tpgs & TPGS_MODE_IMPLICIT))
			return SCSI_DH_OK;
		break;
	case SCSI_ACCESS_STATE_STANDBY:
	case SCSI_ACCESS_STATE_UNAVAILABLE:
		break;
	case SCSI_ACCESS_STATE_OFFLINE:
		return SCSI_DH_IO;
	case SCSI_ACCESS_STATE_TRANSITIONING:
		break;
	default:
		FUNC3(KERN_INFO, sdev,
			    "%s: stpg failed, unhandled TPGS state %d",
			    ALUA_DH_NAME, pg->state);
		return SCSI_DH_NOSYS;
	}
	retval = FUNC4(sdev, pg->group_id, &sense_hdr);

	if (retval) {
		if (!FUNC2(&sense_hdr)) {
			FUNC3(KERN_INFO, sdev,
				    "%s: stpg failed, result %d",
				    ALUA_DH_NAME, retval);
			if (FUNC0(retval) == DRIVER_ERROR)
				return SCSI_DH_DEV_TEMP_BUSY;
		} else {
			FUNC3(KERN_INFO, sdev, "%s: stpg failed\n",
				    ALUA_DH_NAME);
			FUNC1(sdev, ALUA_DH_NAME, &sense_hdr);
		}
	}
	/* Retry RTPG */
	return SCSI_DH_RETRY;
}