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
struct qlogicpti {int /*<<< orphan*/  qpti_id; int /*<<< orphan*/  irq; TYPE_1__* qhost; struct platform_device* op; } ;
struct TYPE_4__ {int /*<<< orphan*/ * irqs; } ;
struct platform_device {TYPE_2__ archdata; } ;
struct TYPE_3__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  qpti_intr ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct qlogicpti*) ; 

__attribute__((used)) static int FUNC2(struct qlogicpti *qpti)
{
	struct platform_device *op = qpti->op;

	qpti->qhost->irq = qpti->irq = op->archdata.irqs[0];

	/* We used to try various overly-clever things to
	 * reduce the interrupt processing overhead on
	 * sun4c/sun4m when multiple PTI's shared the
	 * same IRQ.  It was too complex and messy to
	 * sanely maintain.
	 */
	if (FUNC1(qpti->irq, qpti_intr,
			IRQF_SHARED, "QlogicPTI", qpti))
		goto fail;

	FUNC0("qlogicpti%d: IRQ %d ", qpti->qpti_id, qpti->irq);

	return 0;

fail:
	FUNC0("qlogicpti%d: Cannot acquire irq line\n", qpti->qpti_id);
	return -1;
}