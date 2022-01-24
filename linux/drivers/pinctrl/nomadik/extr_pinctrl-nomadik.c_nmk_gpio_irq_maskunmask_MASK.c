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
struct nmk_gpio_chip {int real_wake; int /*<<< orphan*/  clk; int /*<<< orphan*/  lock; } ;
struct irq_data {int /*<<< orphan*/  hwirq; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  NORMAL ; 
 int /*<<< orphan*/  FUNC1 (struct nmk_gpio_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nmk_gpio_chip*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct nmk_gpio_chip* FUNC5 (struct irq_data*) ; 
 int /*<<< orphan*/  nmk_gpio_slpm_lock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC10(struct irq_data *d, bool enable)
{
	struct nmk_gpio_chip *nmk_chip;
	unsigned long flags;

	nmk_chip = FUNC5(d);
	if (!nmk_chip)
		return -EINVAL;

	FUNC4(nmk_chip->clk);
	FUNC7(&nmk_gpio_slpm_lock, flags);
	FUNC6(&nmk_chip->lock);

	FUNC1(nmk_chip, d->hwirq, NORMAL, enable);

	if (!(nmk_chip->real_wake & FUNC0(d->hwirq)))
		FUNC2(nmk_chip, d->hwirq, enable);

	FUNC8(&nmk_chip->lock);
	FUNC9(&nmk_gpio_slpm_lock, flags);
	FUNC3(nmk_chip->clk);

	return 0;
}