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
struct subchannel_id {int /*<<< orphan*/  sch_no; } ;
struct TYPE_3__ {int sch_no; } ;
struct qdio_irq {scalar_t__ state; int /*<<< orphan*/  setup_mutex; scalar_t__ orig_handler; TYPE_1__ schid; } ;
struct ccw_device {TYPE_2__* private; scalar_t__ handler; } ;
struct TYPE_4__ {scalar_t__ intparm; int /*<<< orphan*/  wait_q; struct qdio_irq* qdio_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int HZ ; 
 int /*<<< orphan*/  QDIO_DOING_CLEANUP ; 
 int QDIO_FLAG_CLEANUP_USING_CLEAR ; 
 scalar_t__ QDIO_IRQ_STATE_CLEANUP ; 
 scalar_t__ QDIO_IRQ_STATE_ERR ; 
 scalar_t__ QDIO_IRQ_STATE_INACTIVE ; 
 scalar_t__ QDIO_IRQ_STATE_STOPPED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ccw_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ccw_device*,struct subchannel_id*) ; 
 int FUNC5 (struct ccw_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ qdio_int_handler ; 
 int /*<<< orphan*/  FUNC10 (struct qdio_irq*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct qdio_irq*) ; 
 int /*<<< orphan*/  FUNC12 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct qdio_irq*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct qdio_irq*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int,int) ; 

int FUNC18(struct ccw_device *cdev, int how)
{
	struct qdio_irq *irq_ptr = cdev->private->qdio_data;
	struct subchannel_id schid;
	int rc;

	if (!irq_ptr)
		return -ENODEV;

	FUNC2(FUNC7());
	FUNC4(cdev, &schid);
	FUNC1("qshutdown:%4x", schid.sch_no);

	FUNC8(&irq_ptr->setup_mutex);
	/*
	 * Subchannel was already shot down. We cannot prevent being called
	 * twice since cio may trigger a shutdown asynchronously.
	 */
	if (irq_ptr->state == QDIO_IRQ_STATE_INACTIVE) {
		FUNC9(&irq_ptr->setup_mutex);
		return 0;
	}

	/*
	 * Indicate that the device is going down. Scheduling the queue
	 * tasklets is forbidden from here on.
	 */
	FUNC10(irq_ptr, QDIO_IRQ_STATE_STOPPED);

	FUNC16(irq_ptr);
	FUNC12(cdev);
	FUNC11(irq_ptr);

	/* cleanup subchannel */
	FUNC14(FUNC6(cdev));

	if (how & QDIO_FLAG_CLEANUP_USING_CLEAR)
		rc = FUNC3(cdev, QDIO_DOING_CLEANUP);
	else
		/* default behaviour is halt */
		rc = FUNC5(cdev, QDIO_DOING_CLEANUP);
	if (rc) {
		FUNC0("%4x SHUTD ERR", irq_ptr->schid.sch_no);
		FUNC0("rc:%4d", rc);
		goto no_cleanup;
	}

	FUNC10(irq_ptr, QDIO_IRQ_STATE_CLEANUP);
	FUNC15(FUNC6(cdev));
	FUNC17(cdev->private->wait_q,
		irq_ptr->state == QDIO_IRQ_STATE_INACTIVE ||
		irq_ptr->state == QDIO_IRQ_STATE_ERR,
		10 * HZ);
	FUNC14(FUNC6(cdev));

no_cleanup:
	FUNC13(irq_ptr);

	/* restore interrupt handler */
	if ((void *)cdev->handler == (void *)qdio_int_handler) {
		cdev->handler = irq_ptr->orig_handler;
		cdev->private->intparm = 0;
	}
	FUNC15(FUNC6(cdev));

	FUNC10(irq_ptr, QDIO_IRQ_STATE_INACTIVE);
	FUNC9(&irq_ptr->setup_mutex);
	if (rc)
		return rc;
	return 0;
}