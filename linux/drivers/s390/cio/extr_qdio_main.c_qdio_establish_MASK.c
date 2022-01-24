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
typedef  scalar_t__ u32 ;
struct subchannel_id {int /*<<< orphan*/  sch_no; } ;
struct TYPE_6__ {int sch_no; } ;
struct TYPE_8__ {scalar_t__ cda; int /*<<< orphan*/  count; int /*<<< orphan*/  flags; int /*<<< orphan*/  cmd_code; } ;
struct TYPE_5__ {int /*<<< orphan*/  count; int /*<<< orphan*/  cmd; } ;
struct qdio_irq {scalar_t__ state; int /*<<< orphan*/  setup_mutex; TYPE_2__ schid; TYPE_4__ ccw; scalar_t__ qdr; TYPE_1__ equeue; } ;
struct qdio_initialize {struct ccw_device* cdev; } ;
struct ccw_device {TYPE_3__* private; } ;
typedef  scalar_t__ addr_t ;
struct TYPE_7__ {int /*<<< orphan*/  wait_q; struct qdio_irq* qdio_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCW_FLAG_SLI ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int EIO ; 
 int ENODEV ; 
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  QDIO_DOING_ESTABLISH ; 
 int /*<<< orphan*/  QDIO_FLAG_CLEANUP_USING_CLEAR ; 
 scalar_t__ QDIO_IRQ_STATE_ERR ; 
 scalar_t__ QDIO_IRQ_STATE_ESTABLISHED ; 
 int /*<<< orphan*/  FUNC2 (struct ccw_device*,struct subchannel_id*) ; 
 int /*<<< orphan*/  FUNC3 (struct ccw_device*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ccw_device*,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct qdio_irq*) ; 
 int FUNC9 (struct qdio_irq*) ; 
 int /*<<< orphan*/  FUNC10 (struct qdio_irq*) ; 
 int /*<<< orphan*/  FUNC11 (struct qdio_irq*,struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct qdio_irq*,struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct qdio_initialize*) ; 
 int /*<<< orphan*/  FUNC14 (struct qdio_irq*) ; 
 int /*<<< orphan*/  FUNC15 (struct ccw_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int FUNC19(struct qdio_initialize *init_data)
{
	struct ccw_device *cdev = init_data->cdev;
	struct subchannel_id schid;
	struct qdio_irq *irq_ptr;
	int rc;

	FUNC2(cdev, &schid);
	FUNC1("qestablish:%4x", schid.sch_no);

	irq_ptr = cdev->private->qdio_data;
	if (!irq_ptr)
		return -ENODEV;

	FUNC6(&irq_ptr->setup_mutex);
	FUNC13(init_data);

	rc = FUNC9(irq_ptr);
	if (rc) {
		FUNC7(&irq_ptr->setup_mutex);
		FUNC15(cdev, QDIO_FLAG_CLEANUP_USING_CLEAR);
		return rc;
	}

	/* establish q */
	irq_ptr->ccw.cmd_code = irq_ptr->equeue.cmd;
	irq_ptr->ccw.flags = CCW_FLAG_SLI;
	irq_ptr->ccw.count = irq_ptr->equeue.count;
	irq_ptr->ccw.cda = (u32)((addr_t)irq_ptr->qdr);

	FUNC16(FUNC5(cdev));
	FUNC3(cdev, 0);

	rc = FUNC4(cdev, &irq_ptr->ccw, QDIO_DOING_ESTABLISH, 0, 0);
	FUNC17(FUNC5(cdev));
	if (rc) {
		FUNC0("%4x est IO ERR", irq_ptr->schid.sch_no);
		FUNC0("rc:%4x", rc);
		FUNC7(&irq_ptr->setup_mutex);
		FUNC15(cdev, QDIO_FLAG_CLEANUP_USING_CLEAR);
		return rc;
	}

	FUNC18(cdev->private->wait_q,
		irq_ptr->state == QDIO_IRQ_STATE_ESTABLISHED ||
		irq_ptr->state == QDIO_IRQ_STATE_ERR, HZ);

	if (irq_ptr->state != QDIO_IRQ_STATE_ESTABLISHED) {
		FUNC7(&irq_ptr->setup_mutex);
		FUNC15(cdev, QDIO_FLAG_CLEANUP_USING_CLEAR);
		return -EIO;
	}

	FUNC14(irq_ptr);

	FUNC8(irq_ptr);

	/* qebsm is now setup if available, initialize buffer states */
	FUNC10(irq_ptr);

	FUNC7(&irq_ptr->setup_mutex);
	FUNC11(irq_ptr, cdev);
	FUNC12(irq_ptr, cdev);
	return 0;
}