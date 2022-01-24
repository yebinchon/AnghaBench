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
struct mtk_eint {int /*<<< orphan*/  irq; int /*<<< orphan*/  domain; TYPE_1__* hw; TYPE_2__* dev; void* dual_edge; void* cur_mask; void* wake_mask; int /*<<< orphan*/ * regs; } ;
struct TYPE_4__ {int /*<<< orphan*/  of_node; } ;
struct TYPE_3__ {int ports; int ap_num; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (TYPE_2__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  handle_level_irq ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  irq_domain_simple_ops ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mtk_eint*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,struct mtk_eint*) ; 
 int /*<<< orphan*/  FUNC6 (struct mtk_eint*) ; 
 int /*<<< orphan*/  mtk_eint_irq_chip ; 
 int /*<<< orphan*/  mtk_eint_irq_handler ; 
 int /*<<< orphan*/  mtk_generic_eint_regs ; 

int FUNC7(struct mtk_eint *eint)
{
	int i;

	/* If clients don't assign a specific regs, let's use generic one */
	if (!eint->regs)
		eint->regs = &mtk_generic_eint_regs;

	eint->wake_mask = FUNC0(eint->dev, eint->hw->ports,
				       sizeof(*eint->wake_mask), GFP_KERNEL);
	if (!eint->wake_mask)
		return -ENOMEM;

	eint->cur_mask = FUNC0(eint->dev, eint->hw->ports,
				      sizeof(*eint->cur_mask), GFP_KERNEL);
	if (!eint->cur_mask)
		return -ENOMEM;

	eint->dual_edge = FUNC0(eint->dev, eint->hw->ap_num,
				       sizeof(int), GFP_KERNEL);
	if (!eint->dual_edge)
		return -ENOMEM;

	eint->domain = FUNC2(eint->dev->of_node,
					     eint->hw->ap_num,
					     &irq_domain_simple_ops, NULL);
	if (!eint->domain)
		return -ENOMEM;

	FUNC6(eint);
	for (i = 0; i < eint->hw->ap_num; i++) {
		int virq = FUNC1(eint->domain, i);

		FUNC4(virq, &mtk_eint_irq_chip,
					 handle_level_irq);
		FUNC5(virq, eint);
	}

	FUNC3(eint->irq, mtk_eint_irq_handler,
					 eint);

	return 0;
}