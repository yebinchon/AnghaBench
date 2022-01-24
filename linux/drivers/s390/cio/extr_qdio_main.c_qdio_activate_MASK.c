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
struct subchannel_id {int /*<<< orphan*/  sch_no; } ;
struct TYPE_7__ {int sch_no; } ;
struct TYPE_8__ {scalar_t__ cda; int /*<<< orphan*/  count; int /*<<< orphan*/  flags; int /*<<< orphan*/  cmd_code; } ;
struct TYPE_6__ {int /*<<< orphan*/  count; int /*<<< orphan*/  cmd; } ;
struct qdio_irq {int state; int /*<<< orphan*/  setup_mutex; TYPE_3__ schid; TYPE_4__ ccw; TYPE_2__ aqueue; } ;
struct ccw_device {TYPE_1__* private; } ;
struct TYPE_5__ {struct qdio_irq* qdio_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCWDEV_REPORT_ALL ; 
 int /*<<< orphan*/  CCW_FLAG_SLI ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DOIO_DENY_PREFETCH ; 
 int EBUSY ; 
 int EIO ; 
 int ENODEV ; 
 int /*<<< orphan*/  QDIO_DOING_ACTIVATE ; 
 int /*<<< orphan*/  QDIO_IRQ_STATE_ACTIVE ; 
#define  QDIO_IRQ_STATE_ERR 129 
 int QDIO_IRQ_STATE_INACTIVE ; 
#define  QDIO_IRQ_STATE_STOPPED 128 
 int /*<<< orphan*/  FUNC2 (struct ccw_device*,struct subchannel_id*) ; 
 int /*<<< orphan*/  FUNC3 (struct ccw_device*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ccw_device*,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ccw_device*) ; 
 scalar_t__ FUNC6 (struct qdio_irq*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct qdio_irq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct qdio_irq*) ; 

int FUNC14(struct ccw_device *cdev)
{
	struct subchannel_id schid;
	struct qdio_irq *irq_ptr;
	int rc;

	FUNC2(cdev, &schid);
	FUNC1("qactivate:%4x", schid.sch_no);

	irq_ptr = cdev->private->qdio_data;
	if (!irq_ptr)
		return -ENODEV;

	FUNC8(&irq_ptr->setup_mutex);
	if (irq_ptr->state == QDIO_IRQ_STATE_INACTIVE) {
		rc = -EBUSY;
		goto out;
	}

	irq_ptr->ccw.cmd_code = irq_ptr->aqueue.cmd;
	irq_ptr->ccw.flags = CCW_FLAG_SLI;
	irq_ptr->ccw.count = irq_ptr->aqueue.count;
	irq_ptr->ccw.cda = 0;

	FUNC11(FUNC5(cdev));
	FUNC3(cdev, CCWDEV_REPORT_ALL);

	rc = FUNC4(cdev, &irq_ptr->ccw, QDIO_DOING_ACTIVATE,
			      0, DOIO_DENY_PREFETCH);
	FUNC12(FUNC5(cdev));
	if (rc) {
		FUNC0("%4x act IO ERR", irq_ptr->schid.sch_no);
		FUNC0("rc:%4x", rc);
		goto out;
	}

	if (FUNC6(irq_ptr))
		FUNC13(irq_ptr);

	/* wait for subchannel to become active */
	FUNC7(5);

	switch (irq_ptr->state) {
	case QDIO_IRQ_STATE_STOPPED:
	case QDIO_IRQ_STATE_ERR:
		rc = -EIO;
		break;
	default:
		FUNC10(irq_ptr, QDIO_IRQ_STATE_ACTIVE);
		rc = 0;
	}
out:
	FUNC9(&irq_ptr->setup_mutex);
	return rc;
}