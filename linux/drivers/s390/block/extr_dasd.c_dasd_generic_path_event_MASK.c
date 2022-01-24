#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dasd_device {TYPE_2__* cdev; TYPE_1__* discipline; } ;
struct ccw_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* disable_hpf ) (struct dasd_device*) ;int /*<<< orphan*/  (* kick_validate ) (struct dasd_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DASD_EER_NOPATH ; 
 int /*<<< orphan*/  DASD_STOPPED_DC_WAIT ; 
 int /*<<< orphan*/  DASD_STOPPED_NOT_ACC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct dasd_device*,char*,char*) ; 
 int /*<<< orphan*/  DBF_WARNING ; 
 scalar_t__ FUNC1 (struct dasd_device*) ; 
 int PE_PATHGROUP_ESTABLISHED ; 
 int PE_PATH_AVAILABLE ; 
 int PE_PATH_GONE ; 
 struct dasd_device* FUNC2 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct dasd_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dasd_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dasd_device*,int) ; 
 int FUNC6 (struct dasd_device*) ; 
 int FUNC7 (struct dasd_device*) ; 
 int FUNC8 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct dasd_device*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct dasd_device*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct dasd_device*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct dasd_device*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC17 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC18 (struct dasd_device*) ; 

void FUNC19(struct ccw_device *cdev, int *path_event)
{
	struct dasd_device *device;
	int chp, oldopm, hpfpm, ifccpm;

	device = FUNC2(cdev);
	if (FUNC1(device))
		return;

	oldopm = FUNC8(device);
	for (chp = 0; chp < 8; chp++) {
		if (path_event[chp] & PE_PATH_GONE) {
			FUNC11(device, chp);
		}
		if (path_event[chp] & PE_PATH_AVAILABLE) {
			FUNC5(device, chp);
			FUNC14(device);
		}
		if (path_event[chp] & PE_PATHGROUP_ESTABLISHED) {
			if (!FUNC9(device, chp) &&
			    !FUNC10(device, chp)) {
				/*
				 * we can not establish a pathgroup on an
				 * unavailable path, so trigger a path
				 * verification first
				 */
			FUNC5(device, chp);
			FUNC14(device);
			}
			FUNC0(DBF_WARNING, device, "%s",
				      "Pathgroup re-established\n");
			if (device->discipline->kick_validate)
				device->discipline->kick_validate(device);
		}
	}
	hpfpm = FUNC6(device);
	ifccpm = FUNC7(device);
	if (!FUNC8(device) && hpfpm) {
		/*
		 * device has no operational paths but at least one path is
		 * disabled due to HPF errors
		 * disable HPF at all and use the path(s) again
		 */
		if (device->discipline->disable_hpf)
			device->discipline->disable_hpf(device);
		FUNC3(device, DASD_STOPPED_NOT_ACC);
		FUNC12(device, hpfpm);
		FUNC14(device);
		FUNC15(device);
	} else if (!FUNC8(device) && ifccpm) {
		/*
		 * device has no operational paths but at least one path is
		 * disabled due to IFCC errors
		 * trigger path verification on paths with IFCC errors
		 */
		FUNC12(device, ifccpm);
		FUNC14(device);
	}
	if (oldopm && !FUNC8(device) && !hpfpm && !ifccpm) {
		FUNC16(&device->cdev->dev,
			 "No verified channel paths remain for the device\n");
		FUNC0(DBF_WARNING, device,
			      "%s", "last verified path gone");
		FUNC4(device, NULL, DASD_EER_NOPATH);
		FUNC3(device,
					  DASD_STOPPED_DC_WAIT);
	}
	FUNC13(device);
}