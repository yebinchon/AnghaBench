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

/* Variables and functions */
 int QM_PIRQ_VISIBLE ; 
 int /*<<< orphan*/  QM_REG_IER ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct qman_portal *p, u32 bits)
{
	unsigned long irqflags;

	FUNC1(irqflags);
	p->irq_sources |= bits & QM_PIRQ_VISIBLE;
	FUNC2(&p->p, QM_REG_IER, p->irq_sources);
	FUNC0(irqflags);
}