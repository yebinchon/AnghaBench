#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_9__ ;
typedef  struct TYPE_25__   TYPE_8__ ;
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_12__ ;
typedef  struct TYPE_16__   TYPE_11__ ;
typedef  struct TYPE_15__   TYPE_10__ ;

/* Type definitions */
struct TYPE_24__ {scalar_t__ pvrf; } ;
struct TYPE_25__ {TYPE_7__ erw; } ;
struct TYPE_26__ {TYPE_8__ esw0; } ;
struct TYPE_18__ {int dstat; } ;
struct TYPE_17__ {TYPE_1__ cmd; } ;
struct irb {TYPE_9__ esw; TYPE_12__ scsw; } ;
struct ccw_device {TYPE_11__* private; } ;
struct TYPE_19__ {int cons; } ;
struct TYPE_20__ {TYPE_2__ erw; } ;
struct TYPE_21__ {TYPE_3__ esw0; } ;
struct TYPE_22__ {TYPE_4__ esw; } ;
struct TYPE_23__ {TYPE_5__ irb; } ;
struct TYPE_15__ {int doverify; scalar_t__ dosense; } ;
struct TYPE_16__ {TYPE_10__ flags; TYPE_6__* dma_area; } ;

/* Variables and functions */
 int DEV_STAT_CHN_END ; 
 int DEV_STAT_UNIT_CHECK ; 
 int SCSW_STCTL_STATUS_PEND ; 
 scalar_t__ FUNC0 (struct irb*) ; 
 int /*<<< orphan*/  FUNC1 (struct ccw_device*,struct irb*) ; 
 int /*<<< orphan*/  FUNC2 (struct ccw_device*) ; 
 scalar_t__ FUNC3 (TYPE_12__*) ; 
 scalar_t__ FUNC4 (TYPE_12__*) ; 
 int FUNC5 (TYPE_12__*) ; 

void
FUNC6(struct ccw_device *cdev, struct irb *irb)
{
	/*
	 * Check if the status pending bit is set in stctl.
	 * If not, the remaining bit have no meaning and we must ignore them.
	 * The esw is not meaningful as well...
	 */
	if (!(FUNC5(&irb->scsw) & SCSW_STCTL_STATUS_PEND))
		return;

	/* Check for channel checks and interface control checks. */
	FUNC1(cdev, irb);

	/* Check for path not operational. */
	if (FUNC3(&irb->scsw) && FUNC4(&irb->scsw))
		FUNC2(cdev);

	if (!(irb->scsw.cmd.dstat & DEV_STAT_UNIT_CHECK) &&
	    (irb->scsw.cmd.dstat & DEV_STAT_CHN_END)) {
		cdev->private->dma_area->irb.esw.esw0.erw.cons = 1;
		cdev->private->flags.dosense = 0;
	}
	/* Check if path verification is required. */
	if (FUNC0(irb) &&
	    irb->esw.esw0.erw.pvrf)
		cdev->private->flags.doverify = 1;
}