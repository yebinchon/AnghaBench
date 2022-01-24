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
struct msm_pinctrl {int /*<<< orphan*/  pctrl; } ;
struct irq_data {int /*<<< orphan*/  hwirq; } ;
struct gpio_chip {int /*<<< orphan*/  owner; int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct msm_pinctrl* FUNC1 (struct gpio_chip*) ; 
 scalar_t__ FUNC2 (struct gpio_chip*,int /*<<< orphan*/ ) ; 
 struct gpio_chip* FUNC3 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct gpio_chip*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct irq_data *d)
{
	struct gpio_chip *gc = FUNC3(d);
	struct msm_pinctrl *pctrl = FUNC1(gc);
	int ret;

	if (!FUNC7(gc->owner))
		return -ENODEV;

	ret = FUNC6(pctrl->pctrl, NULL, d->hwirq);
	if (ret)
		goto out;
	FUNC5(gc, d->hwirq);

	if (FUNC2(gc, d->hwirq)) {
		FUNC0(gc->parent,
			"unable to lock HW IRQ %lu for IRQ\n",
			d->hwirq);
		ret = -EINVAL;
		goto out;
	}
	return 0;
out:
	FUNC4(gc->owner);
	return ret;
}