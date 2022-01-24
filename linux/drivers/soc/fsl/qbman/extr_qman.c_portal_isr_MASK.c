#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct qman_portal {int irq_sources; int /*<<< orphan*/  p; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  QMAN_POLL_LIMIT ; 
 int QM_DQAVAIL_MASK ; 
 int QM_PIRQ_DQRI ; 
 int QM_PIRQ_SLOW ; 
 int /*<<< orphan*/  QM_REG_ISR ; 
 int /*<<< orphan*/  FUNC0 (struct qman_portal*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct qman_portal*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *ptr)
{
	struct qman_portal *p = ptr;
	u32 is = FUNC2(&p->p, QM_REG_ISR) & p->irq_sources;
	u32 clear = 0;

	if (FUNC4(!is))
		return IRQ_NONE;

	/* DQRR-handling if it's interrupt-driven */
	if (is & QM_PIRQ_DQRI) {
		FUNC0(p, QMAN_POLL_LIMIT);
		clear = QM_DQAVAIL_MASK | QM_PIRQ_DQRI;
	}
	/* Handling of anything else that's interrupt-driven */
	clear |= FUNC1(p, is) & QM_PIRQ_SLOW;
	FUNC3(&p->p, QM_REG_ISR, clear);
	return IRQ_HANDLED;
}