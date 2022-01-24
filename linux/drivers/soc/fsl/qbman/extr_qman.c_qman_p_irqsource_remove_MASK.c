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
typedef  int /*<<< orphan*/  u32 ;
struct qman_portal {int /*<<< orphan*/  p; int /*<<< orphan*/  irq_sources; } ;

/* Variables and functions */
 int /*<<< orphan*/  QM_PIRQ_VISIBLE ; 
 int /*<<< orphan*/  QM_REG_IER ; 
 int /*<<< orphan*/  QM_REG_ISR ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct qman_portal *p, u32 bits)
{
	unsigned long irqflags;
	u32 ier;

	/*
	 * Our interrupt handler only processes+clears status register bits that
	 * are in p->irq_sources. As we're trimming that mask, if one of them
	 * were to assert in the status register just before we remove it from
	 * the enable register, there would be an interrupt-storm when we
	 * release the IRQ lock. So we wait for the enable register update to
	 * take effect in h/w (by reading it back) and then clear all other bits
	 * in the status register. Ie. we clear them from ISR once it's certain
	 * IER won't allow them to reassert.
	 */
	FUNC1(irqflags);
	bits &= QM_PIRQ_VISIBLE;
	p->irq_sources &= ~bits;
	FUNC3(&p->p, QM_REG_IER, p->irq_sources);
	ier = FUNC2(&p->p, QM_REG_IER);
	/*
	 * Using "~ier" (rather than "bits" or "~p->irq_sources") creates a
	 * data-dependency, ie. to protect against re-ordering.
	 */
	FUNC3(&p->p, QM_REG_ISR, ~ier);
	FUNC0(irqflags);
}