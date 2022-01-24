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
typedef  scalar_t__ u32 ;
struct sunxi_pinctrl {scalar_t__ membase; int /*<<< orphan*/  desc; } ;
struct irq_data {int /*<<< orphan*/  hwirq; } ;

/* Variables and functions */
 struct sunxi_pinctrl* FUNC0 (struct irq_data*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct irq_data *d)
{
	struct sunxi_pinctrl *pctl = FUNC0(d);
	u32 status_reg = FUNC2(pctl->desc, d->hwirq);
	u8 status_idx = FUNC1(d->hwirq);

	/* Clear the IRQ */
	FUNC3(1 << status_idx, pctl->membase + status_reg);
}