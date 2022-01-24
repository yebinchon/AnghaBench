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
typedef  int u8 ;
typedef  int u32 ;
struct sunxi_pinctrl {int membase; int /*<<< orphan*/  lock; int /*<<< orphan*/  desc; } ;
struct irq_data {int /*<<< orphan*/  hwirq; } ;

/* Variables and functions */
 struct sunxi_pinctrl* FUNC0 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static void FUNC7(struct irq_data *d)
{
	struct sunxi_pinctrl *pctl = FUNC0(d);
	u32 reg = FUNC5(pctl->desc, d->hwirq);
	u8 idx = FUNC4(d->hwirq);
	unsigned long flags;
	u32 val;

	FUNC1(&pctl->lock, flags);

	/* Unmask the IRQ */
	val = FUNC3(pctl->membase + reg);
	FUNC6(val | (1 << idx), pctl->membase + reg);

	FUNC2(&pctl->lock, flags);
}