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
typedef  int u32 ;
struct irq_data {int dummy; } ;
struct gpio_chip {int dummy; } ;
struct chv_pinctrl {scalar_t__ regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CHV_INTSTAT ; 
 int /*<<< orphan*/  CHV_PADCTRL0 ; 
 int CHV_PADCTRL0_INTSEL_MASK ; 
 int CHV_PADCTRL0_INTSEL_SHIFT ; 
 int /*<<< orphan*/  chv_lock ; 
 int /*<<< orphan*/  FUNC1 (struct chv_pinctrl*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct chv_pinctrl* FUNC3 (struct gpio_chip*) ; 
 struct gpio_chip* FUNC4 (struct irq_data*) ; 
 int FUNC5 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct irq_data *d)
{
	struct gpio_chip *gc = FUNC4(d);
	struct chv_pinctrl *pctrl = FUNC3(gc);
	int pin = FUNC5(d);
	u32 intr_line;

	FUNC6(&chv_lock);

	intr_line = FUNC8(FUNC1(pctrl, pin, CHV_PADCTRL0));
	intr_line &= CHV_PADCTRL0_INTSEL_MASK;
	intr_line >>= CHV_PADCTRL0_INTSEL_SHIFT;
	FUNC2(FUNC0(intr_line), pctrl->regs + CHV_INTSTAT);

	FUNC7(&chv_lock);
}