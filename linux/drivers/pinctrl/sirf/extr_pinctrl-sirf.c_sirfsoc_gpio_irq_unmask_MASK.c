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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ regs; } ;
struct sirfsoc_gpio_chip {int /*<<< orphan*/  lock; TYPE_1__ chip; } ;
struct sirfsoc_gpio_bank {int /*<<< orphan*/  id; } ;
struct irq_data {int /*<<< orphan*/  hwirq; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 scalar_t__ SIRFSOC_GPIO_CTL_INTR_EN_MASK ; 
 scalar_t__ SIRFSOC_GPIO_CTL_INTR_STS_MASK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct sirfsoc_gpio_chip* FUNC1 (struct gpio_chip*) ; 
 struct gpio_chip* FUNC2 (struct irq_data*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 struct sirfsoc_gpio_bank* FUNC4 (struct sirfsoc_gpio_chip*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC9(struct irq_data *d)
{
	struct gpio_chip *gc = FUNC2(d);
	struct sirfsoc_gpio_chip *sgpio = FUNC1(gc);
	struct sirfsoc_gpio_bank *bank = FUNC4(sgpio, d->hwirq);
	int idx = FUNC5(d->hwirq);
	u32 val, offset;
	unsigned long flags;

	offset = FUNC0(bank->id, idx);

	FUNC6(&sgpio->lock, flags);

	val = FUNC3(sgpio->chip.regs + offset);
	val &= ~SIRFSOC_GPIO_CTL_INTR_STS_MASK;
	val |= SIRFSOC_GPIO_CTL_INTR_EN_MASK;
	FUNC8(val, sgpio->chip.regs + offset);

	FUNC7(&sgpio->lock, flags);
}