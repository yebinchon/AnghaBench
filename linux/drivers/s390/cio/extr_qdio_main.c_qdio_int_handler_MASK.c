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
struct subchannel_id {int /*<<< orphan*/  sch_no; } ;
struct TYPE_7__ {int /*<<< orphan*/  sch_no; } ;
struct TYPE_6__ {int /*<<< orphan*/  qdio_int; } ;
struct qdio_irq {int state; TYPE_2__ schid; TYPE_1__ perf_stat; scalar_t__ perf_stat_enabled; } ;
struct TYPE_8__ {int cstat; int dstat; } ;
struct TYPE_9__ {TYPE_3__ cmd; } ;
struct irb {TYPE_4__ scsw; } ;
struct ccw_device {TYPE_5__* private; } ;
struct TYPE_10__ {int /*<<< orphan*/  wait_q; struct qdio_irq* qdio_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct irb*) ; 
#define  QDIO_IRQ_STATE_ACTIVE 132 
#define  QDIO_IRQ_STATE_CLEANUP 131 
 int const QDIO_IRQ_STATE_ERR ; 
#define  QDIO_IRQ_STATE_ESTABLISHED 130 
#define  QDIO_IRQ_STATE_INACTIVE 129 
#define  QDIO_IRQ_STATE_STOPPED 128 
 int SCHN_STAT_PCI ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ccw_device*,struct subchannel_id*) ; 
 int /*<<< orphan*/  FUNC4 (struct ccw_device*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ccw_device*,unsigned long,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct qdio_irq*) ; 
 int /*<<< orphan*/  FUNC7 (struct qdio_irq*,struct irb*) ; 
 int /*<<< orphan*/  FUNC8 (struct qdio_irq*,int const) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(struct ccw_device *cdev, unsigned long intparm,
		      struct irb *irb)
{
	struct qdio_irq *irq_ptr = cdev->private->qdio_data;
	struct subchannel_id schid;
	int cstat, dstat;

	if (!intparm || !irq_ptr) {
		FUNC3(cdev, &schid);
		FUNC0("qint:%4x", schid.sch_no);
		return;
	}

	if (irq_ptr->perf_stat_enabled)
		irq_ptr->perf_stat.qdio_int++;

	if (FUNC1(irb)) {
		FUNC0("%4x IO error", irq_ptr->schid.sch_no);
		FUNC8(irq_ptr, QDIO_IRQ_STATE_ERR);
		FUNC9(&cdev->private->wait_q);
		return;
	}
	FUNC7(irq_ptr, irb);
	cstat = irb->scsw.cmd.cstat;
	dstat = irb->scsw.cmd.dstat;

	switch (irq_ptr->state) {
	case QDIO_IRQ_STATE_INACTIVE:
		FUNC4(cdev, cstat, dstat);
		break;
	case QDIO_IRQ_STATE_CLEANUP:
		FUNC8(irq_ptr, QDIO_IRQ_STATE_INACTIVE);
		break;
	case QDIO_IRQ_STATE_ESTABLISHED:
	case QDIO_IRQ_STATE_ACTIVE:
		if (cstat & SCHN_STAT_PCI) {
			FUNC6(irq_ptr);
			return;
		}
		if (cstat || dstat)
			FUNC5(cdev, intparm, cstat,
						   dstat);
		break;
	case QDIO_IRQ_STATE_STOPPED:
		break;
	default:
		FUNC2(1);
	}
	FUNC9(&cdev->private->wait_q);
}