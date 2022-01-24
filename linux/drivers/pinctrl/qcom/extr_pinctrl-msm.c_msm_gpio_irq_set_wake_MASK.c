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
struct msm_pinctrl {int /*<<< orphan*/  lock; int /*<<< orphan*/  irq; } ;
struct irq_data {int dummy; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 struct msm_pinctrl* FUNC0 (struct gpio_chip*) ; 
 struct gpio_chip* FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct irq_data *d, unsigned int on)
{
	struct gpio_chip *gc = FUNC1(d);
	struct msm_pinctrl *pctrl = FUNC0(gc);
	unsigned long flags;

	FUNC3(&pctrl->lock, flags);

	FUNC2(pctrl->irq, on);

	FUNC4(&pctrl->lock, flags);

	return 0;
}