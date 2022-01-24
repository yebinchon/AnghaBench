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
struct qdio_q {TYPE_2__* irq_ptr; } ;
struct qdio_irq {struct qdio_q** input_qs; } ;
struct ccw_device {TYPE_1__* private; } ;
struct TYPE_4__ {scalar_t__ state; } ;
struct TYPE_3__ {struct qdio_irq* qdio_data; } ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 scalar_t__ QDIO_IRQ_STATE_ACTIVE ; 
 int FUNC0 (struct qdio_q*,int*,int*) ; 
 scalar_t__ FUNC1 (struct qdio_q*) ; 
 int /*<<< orphan*/  FUNC2 (struct qdio_irq*) ; 
 int /*<<< orphan*/  FUNC3 (struct qdio_q*) ; 
 scalar_t__ FUNC4 (int) ; 

int FUNC5(struct ccw_device *cdev, int nr, int *bufnr,
			  int *error)
{
	struct qdio_q *q;
	struct qdio_irq *irq_ptr = cdev->private->qdio_data;

	if (!irq_ptr)
		return -ENODEV;
	q = irq_ptr->input_qs[nr];

	/*
	 * Cannot rely on automatic sync after interrupt since queues may
	 * also be examined without interrupt.
	 */
	if (FUNC1(q))
		FUNC3(q);

	FUNC2(irq_ptr);

	/* Note: upper-layer MUST stop processing immediately here ... */
	if (FUNC4(q->irq_ptr->state != QDIO_IRQ_STATE_ACTIVE))
		return -EIO;

	return FUNC0(q, bufnr, error);
}