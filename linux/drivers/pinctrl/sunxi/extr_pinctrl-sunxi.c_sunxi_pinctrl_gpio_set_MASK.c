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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct sunxi_pinctrl {int /*<<< orphan*/  lock; scalar_t__ membase; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct sunxi_pinctrl* FUNC1 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 scalar_t__ FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct gpio_chip *chip,
				unsigned offset, int value)
{
	struct sunxi_pinctrl *pctl = FUNC1(chip);
	u32 reg = FUNC6(offset);
	u8 index = FUNC5(offset);
	unsigned long flags;
	u32 regval;

	FUNC2(&pctl->lock, flags);

	regval = FUNC4(pctl->membase + reg);

	if (value)
		regval |= FUNC0(index);
	else
		regval &= ~(FUNC0(index));

	FUNC7(regval, pctl->membase + reg);

	FUNC3(&pctl->lock, flags);
}