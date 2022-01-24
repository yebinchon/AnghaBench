#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vmd_irq {TYPE_1__* irq; } ;
struct msi_domain_info {int dummy; } ;
struct irq_domain {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  count; int /*<<< orphan*/  srcu; } ;

/* Variables and functions */
 struct vmd_irq* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct vmd_irq*) ; 
 int /*<<< orphan*/  list_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct irq_domain *domain,
			struct msi_domain_info *info, unsigned int virq)
{
	struct vmd_irq *vmdirq = FUNC0(virq);
	unsigned long flags;

	FUNC4(&vmdirq->irq->srcu);

	/* XXX: Potential optimization to rebalance */
	FUNC2(&list_lock, flags);
	vmdirq->irq->count--;
	FUNC3(&list_lock, flags);

	FUNC1(vmdirq);
}