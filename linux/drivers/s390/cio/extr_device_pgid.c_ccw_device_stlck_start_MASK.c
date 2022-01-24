#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int pam; } ;
struct TYPE_8__ {TYPE_3__ pmcw; } ;
struct subchannel {int opm; TYPE_4__ schib; } ;
struct ccw_request {int lpm; int /*<<< orphan*/  callback; void* data; int /*<<< orphan*/  maxretries; int /*<<< orphan*/  timeout; } ;
struct TYPE_5__ {int /*<<< orphan*/  parent; } ;
struct ccw_device {TYPE_2__* private; TYPE_1__ dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev_id; struct ccw_request req; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  PGID_RETRIES ; 
 int /*<<< orphan*/  PGID_TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ccw_request*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ccw_device*,void*,void*) ; 
 int /*<<< orphan*/  stlck_callback ; 
 struct subchannel* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct ccw_device *cdev, void *data,
				   void *buf1, void *buf2)
{
	struct subchannel *sch = FUNC5(cdev->dev.parent);
	struct ccw_request *req = &cdev->private->req;

	FUNC1(4, "stlck");
	FUNC0(4, &cdev->private->dev_id, sizeof(cdev->private->dev_id));
	/* Request setup. */
	FUNC3(req, 0, sizeof(*req));
	req->timeout	= PGID_TIMEOUT;
	req->maxretries	= PGID_RETRIES;
	req->lpm	= sch->schib.pmcw.pam & sch->opm;
	req->data	= data;
	req->callback	= stlck_callback;
	FUNC4(cdev, buf1, buf2);
	FUNC2(cdev);
}