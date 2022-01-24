#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int lpum; int /*<<< orphan*/ * chpid; } ;
struct TYPE_9__ {TYPE_3__ pmcw; int /*<<< orphan*/  scsw; } ;
struct TYPE_7__ {int /*<<< orphan*/  cssid; } ;
struct subchannel {TYPE_4__ schib; TYPE_2__ schid; } ;
struct ccw_request {int timeout; int /*<<< orphan*/  drc; } ;
struct TYPE_10__ {int /*<<< orphan*/  parent; } ;
struct ccw_device {TYPE_5__ dev; TYPE_1__* private; } ;
struct TYPE_6__ {struct ccw_request req; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  ETIME ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ccw_device*,int) ; 
 int FUNC2 (struct subchannel*) ; 
 scalar_t__ FUNC3 (struct subchannel*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct subchannel* FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(struct ccw_device *cdev)
{
	struct subchannel *sch = FUNC8(cdev->dev.parent);
	struct ccw_request *req = &cdev->private->req;
	int rc = -ENODEV, chp;

	if (FUNC3(sch))
		goto err;

	for (chp = 0; chp < 8; chp++) {
		if ((0x80 >> chp) & sch->schib.pmcw.lpum)
			FUNC5("%s: No interrupt was received within %lus (CS=%02x, DS=%02x, CHPID=%x.%02x)\n",
				FUNC4(&cdev->dev), req->timeout / HZ,
				FUNC6(&sch->schib.scsw),
				FUNC7(&sch->schib.scsw),
				sch->schid.cssid,
				sch->schib.pmcw.chpid[chp]);
	}

	if (!FUNC0(cdev)) {
		/* set the final return code for this request */
		req->drc = -ETIME;
	}
	rc = FUNC2(sch);
	if (rc)
		goto err;
	return;

err:
	FUNC1(cdev, rc);
}