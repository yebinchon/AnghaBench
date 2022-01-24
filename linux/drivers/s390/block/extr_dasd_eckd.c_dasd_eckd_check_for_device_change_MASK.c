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
struct irb {int /*<<< orphan*/  scsw; } ;
struct dasd_eckd_private {char suc_reason; scalar_t__ lcu; } ;
struct dasd_device {scalar_t__ state; int features; TYPE_1__* cdev; int /*<<< orphan*/  flags; scalar_t__ block; int /*<<< orphan*/  suc_work; struct dasd_eckd_private* private; } ;
struct dasd_ccw_req {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DASD_FEATURE_FAILONSLCK ; 
 int /*<<< orphan*/  DASD_FLAG_IS_RESERVED ; 
 int /*<<< orphan*/  DASD_FLAG_LOCK_STOLEN ; 
 int /*<<< orphan*/  DASD_FLAG_OFFLINE ; 
 int /*<<< orphan*/  DASD_FLAG_SUC ; 
 int /*<<< orphan*/  DASD_FLAG_SUSPENDED ; 
 char DASD_SENSE_BIT_0 ; 
 char DASD_SIM_SENSE ; 
 scalar_t__ DASD_STATE_ONLINE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct dasd_device*,char*,char*,...) ; 
 int /*<<< orphan*/  DBF_NOTICE ; 
 int /*<<< orphan*/  DBF_WARNING ; 
 char DEV_STAT_ATTENTION ; 
 char DEV_STAT_DEV_END ; 
 char DEV_STAT_UNIT_CHECK ; 
 char DEV_STAT_UNIT_EXCEP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dasd_device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct dasd_device*) ; 
 char* FUNC5 (struct irb*) ; 
 int /*<<< orphan*/  FUNC6 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 char FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(struct dasd_device *device,
					      struct dasd_ccw_req *cqr,
					      struct irb *irb)
{
	char mask;
	char *sense = NULL;
	struct dasd_eckd_private *private = device->private;

	/* first of all check for state change pending interrupt */
	mask = DEV_STAT_ATTENTION | DEV_STAT_DEV_END | DEV_STAT_UNIT_EXCEP;
	if ((FUNC10(&irb->scsw) & mask) == mask) {
		/*
		 * for alias only, not in offline processing
		 * and only if not suspended
		 */
		if (!device->block && private->lcu &&
		    device->state == DASD_STATE_ONLINE &&
		    !FUNC13(DASD_FLAG_OFFLINE, &device->flags) &&
		    !FUNC13(DASD_FLAG_SUSPENDED, &device->flags)) {
			/* schedule worker to reload device */
			FUNC7(device);
		}
		FUNC3(device);
		return;
	}

	sense = FUNC5(irb);
	if (!sense)
		return;

	/* summary unit check */
	if ((sense[27] & DASD_SENSE_BIT_0) && (sense[7] == 0x0D) &&
	    (FUNC10(&irb->scsw) & DEV_STAT_UNIT_CHECK)) {
		if (FUNC12(DASD_FLAG_SUC, &device->flags)) {
			FUNC0(DBF_WARNING, device, "%s",
				      "eckd suc: device already notified");
			return;
		}
		sense = FUNC5(irb);
		if (!sense) {
			FUNC0(DBF_WARNING, device, "%s",
				      "eckd suc: no reason code available");
			FUNC1(DASD_FLAG_SUC, &device->flags);
			return;

		}
		private->suc_reason = sense[8];
		FUNC0(DBF_NOTICE, device, "%s %x",
			      "eckd handle summary unit check: reason",
			      private->suc_reason);
		FUNC4(device);
		if (!FUNC9(&device->suc_work))
			FUNC6(device);

		return;
	}

	/* service information message SIM */
	if (!cqr && !(sense[27] & DASD_SENSE_BIT_0) &&
	    ((sense[6] & DASD_SIM_SENSE) == DASD_SIM_SENSE)) {
		FUNC2(device, sense);
		return;
	}

	/* loss of device reservation is handled via base devices only
	 * as alias devices may be used with several bases
	 */
	if (device->block && (sense[27] & DASD_SENSE_BIT_0) &&
	    (sense[7] == 0x3F) &&
	    (FUNC10(&irb->scsw) & DEV_STAT_UNIT_CHECK) &&
	    FUNC13(DASD_FLAG_IS_RESERVED, &device->flags)) {
		if (device->features & DASD_FEATURE_FAILONSLCK)
			FUNC11(DASD_FLAG_LOCK_STOLEN, &device->flags);
		FUNC1(DASD_FLAG_IS_RESERVED, &device->flags);
		FUNC8(&device->cdev->dev,
			"The device reservation was lost\n");
	}
}