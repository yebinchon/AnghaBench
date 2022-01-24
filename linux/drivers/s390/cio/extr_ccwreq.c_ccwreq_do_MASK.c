#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct subchannel {int dummy; } ;
struct irb {int dummy; } ;
struct ccw_request {int /*<<< orphan*/  timeout; scalar_t__ mask; int /*<<< orphan*/  retries; struct ccw1* cp; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct ccw_device {TYPE_3__* private; TYPE_1__ dev; } ;
struct ccw1 {int dummy; } ;
struct TYPE_6__ {TYPE_2__* dma_area; struct ccw_request req; } ;
struct TYPE_5__ {int /*<<< orphan*/  irb; } ;

/* Variables and functions */
 int EACCES ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct ccw_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ccw_device*,int) ; 
 int FUNC3 (struct subchannel*) ; 
 int FUNC4 (struct subchannel*,struct ccw1*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct subchannel* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct ccw_device *cdev)
{
	struct ccw_request *req = &cdev->private->req;
	struct subchannel *sch = FUNC6(cdev->dev.parent);
	struct ccw1 *cp = req->cp;
	int rc = -EACCES;

	while (req->mask) {
		if (req->retries-- == 0) {
			/* Retries exhausted, try next path. */
			FUNC1(cdev);
			continue;
		}
		/* Perform start function. */
		FUNC5(&cdev->private->dma_area->irb, 0, sizeof(struct irb));
		rc = FUNC4(sch, cp, (u8) req->mask);
		if (rc == 0) {
			/* I/O started successfully. */
			FUNC0(cdev, req->timeout);
			return;
		}
		if (rc == -ENODEV) {
			/* Permanent device error. */
			break;
		}
		if (rc == -EACCES) {
			/* Permant path error. */
			FUNC1(cdev);
			continue;
		}
		/* Temporary improper status. */
		rc = FUNC3(sch);
		if (rc)
			break;
		return;
	}
	FUNC2(cdev, rc);
}