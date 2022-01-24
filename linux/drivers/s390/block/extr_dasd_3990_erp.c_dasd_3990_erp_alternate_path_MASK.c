#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct dasd_device {TYPE_5__* cdev; } ;
struct TYPE_7__ {int lpum; } ;
struct TYPE_8__ {TYPE_1__ sublog; } ;
struct TYPE_9__ {TYPE_2__ esw0; } ;
struct TYPE_10__ {TYPE_3__ esw; } ;
struct dasd_ccw_req {int lpm; int retries; int /*<<< orphan*/  status; TYPE_4__ irb; struct dasd_device* startdev; } ;
typedef  int __u8 ;
struct TYPE_11__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DASD_CQR_FAILED ; 
 int /*<<< orphan*/  DASD_CQR_FILLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct dasd_device*,char*,int,int,int) ; 
 int /*<<< orphan*/  DBF_WARNING ; 
 int FUNC1 (TYPE_5__*) ; 
 int FUNC2 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void
FUNC7(struct dasd_ccw_req * erp)
{
	struct dasd_device *device = erp->startdev;
	__u8 opm;
	unsigned long flags;

	/* try alternate valid path */
	FUNC5(FUNC4(device->cdev), flags);
	opm = FUNC1(device->cdev);
	FUNC6(FUNC4(device->cdev), flags);
	if (erp->lpm == 0)
		erp->lpm = FUNC2(device) &
			~(erp->irb.esw.esw0.sublog.lpum);
	else
		erp->lpm &= ~(erp->irb.esw.esw0.sublog.lpum);

	if ((erp->lpm & opm) != 0x00) {

		FUNC0(DBF_WARNING, device,
			    "try alternate lpm=%x (lpum=%x / opm=%x)",
			    erp->lpm, erp->irb.esw.esw0.sublog.lpum, opm);

		/* reset status to submit the request again... */
		erp->status = DASD_CQR_FILLED;
		erp->retries = 10;
	} else {
		FUNC3(&device->cdev->dev,
			"The DASD cannot be reached on any path (lpum=%x"
			"/opm=%x)\n", erp->irb.esw.esw0.sublog.lpum, opm);

		/* post request with permanent error */
		erp->status = DASD_CQR_FAILED;
	}
}