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
struct sunxi_pinctrl {scalar_t__* irq_array; int /*<<< orphan*/  pctl_dev; int /*<<< orphan*/  dev; TYPE_1__* desc; int /*<<< orphan*/  chip; } ;
struct sunxi_desc_function {int /*<<< orphan*/  muxval; } ;
struct irq_data {size_t hwirq; } ;
struct TYPE_2__ {scalar_t__ pin_base; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct sunxi_pinctrl* FUNC2 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_data*) ; 
 struct sunxi_desc_function* FUNC4 (struct sunxi_pinctrl*,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct irq_data *d)
{
	struct sunxi_pinctrl *pctl = FUNC2(d);
	struct sunxi_desc_function *func;
	int ret;

	func = FUNC4(pctl,
					pctl->irq_array[d->hwirq], "irq");
	if (!func)
		return -EINVAL;

	ret = FUNC1(pctl->chip,
			pctl->irq_array[d->hwirq] - pctl->desc->pin_base);
	if (ret) {
		FUNC0(pctl->dev, "unable to lock HW IRQ %lu for IRQ\n",
			FUNC3(d));
		return ret;
	}

	/* Change muxing to INT mode */
	FUNC5(pctl->pctl_dev, pctl->irq_array[d->hwirq], func->muxval);

	return 0;
}