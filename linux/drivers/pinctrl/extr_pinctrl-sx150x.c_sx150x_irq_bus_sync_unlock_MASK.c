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
struct TYPE_4__ {int /*<<< orphan*/  sense; int /*<<< orphan*/  masked; } ;
struct sx150x_pinctrl {int /*<<< orphan*/  lock; TYPE_2__ irq; TYPE_1__* data; int /*<<< orphan*/  regmap; } ;
struct irq_data {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  reg_sense; int /*<<< orphan*/  reg_irq_mask; } ;

/* Variables and functions */
 struct sx150x_pinctrl* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct irq_data *d)
{
	struct sx150x_pinctrl *pctl =
			FUNC0(FUNC1(d));

	FUNC3(pctl->regmap, pctl->data->reg_irq_mask, pctl->irq.masked);
	FUNC3(pctl->regmap, pctl->data->reg_sense, pctl->irq.sense);
	FUNC2(&pctl->lock);
}