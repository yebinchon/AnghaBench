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
struct irb {int /*<<< orphan*/  scsw; } ;
struct ccw_device {TYPE_4__* private; int /*<<< orphan*/  (* handler ) (struct ccw_device*,int /*<<< orphan*/ ,struct irb*) ;} ;
typedef  enum dev_event { ____Placeholder_dev_event } dev_event ;
struct TYPE_7__ {scalar_t__ doverify; scalar_t__ dosense; } ;
struct TYPE_5__ {int /*<<< orphan*/  devno; int /*<<< orphan*/  ssid; } ;
struct TYPE_8__ {TYPE_3__ flags; int /*<<< orphan*/  wait_q; int /*<<< orphan*/  state; TYPE_2__* dma_area; TYPE_1__ dev_id; } ;
struct TYPE_6__ {int /*<<< orphan*/  irb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEV_STATE_ONLINE ; 
 int SCSW_FCTL_CLEAR_FUNC ; 
 int SCSW_FCTL_HALT_FUNC ; 
 int SCSW_STCTL_ALERT_STATUS ; 
 int SCSW_STCTL_STATUS_PEND ; 
 int /*<<< orphan*/  FUNC1 (struct ccw_device*,struct irb*) ; 
 int /*<<< orphan*/  FUNC2 (struct ccw_device*,struct irb*) ; 
 scalar_t__ FUNC3 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct ccw_device*,struct irb*) ; 
 int /*<<< orphan*/  FUNC5 (struct ccw_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cio_irb ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct ccw_device*,int /*<<< orphan*/ ,struct irb*) ; 
 struct irb* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC13(struct ccw_device *cdev, enum dev_event dev_event)
{
	struct irb *irb;

	irb = FUNC11(&cio_irb);
	/* Check for unsolicited interrupt. */
	if (FUNC9(&irb->scsw) ==
	    (SCSW_STCTL_STATUS_PEND | SCSW_STCTL_ALERT_STATUS)) {
		if (FUNC7(&irb->scsw) == 1)
			/* Basic sense hasn't started. Try again. */
			FUNC4(cdev, irb);
		else {
			FUNC0(0, "0.%x.%04x: unsolicited "
				      "interrupt during w4sense...\n",
				      cdev->private->dev_id.ssid,
				      cdev->private->dev_id.devno);
			if (cdev->handler)
				cdev->handler (cdev, 0, irb);
		}
		return;
	}
	/*
	 * Check if a halt or clear has been issued in the meanwhile. If yes,
	 * only deliver the halt/clear interrupt to the device driver as if it
	 * had killed the original request.
	 */
	if (FUNC8(&irb->scsw) &
	    (SCSW_FCTL_CLEAR_FUNC | SCSW_FCTL_HALT_FUNC)) {
		cdev->private->flags.dosense = 0;
		FUNC6(&cdev->private->dma_area->irb, 0, sizeof(struct irb));
		FUNC2(cdev, irb);
		goto call_handler;
	}
	/* Add basic sense info to irb. */
	FUNC1(cdev, irb);
	if (cdev->private->flags.dosense) {
		/* Another basic sense is needed. */
		FUNC4(cdev, irb);
		return;
	}
call_handler:
	cdev->private->state = DEV_STATE_ONLINE;
	/* In case sensing interfered with setting the device online */
	FUNC12(&cdev->private->wait_q);
	/* Call the handler. */
	if (FUNC3(cdev) && cdev->private->flags.doverify)
		/* Start delayed path verification. */
		FUNC5(cdev, 0);
}