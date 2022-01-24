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
struct chv_pinctrl {unsigned int* intr_lines; } ;
typedef  int /*<<< orphan*/  irq_flow_handler_t ;

/* Variables and functions */
 int /*<<< orphan*/  CHV_PADCTRL0 ; 
 int CHV_PADCTRL0_INTSEL_MASK ; 
 int CHV_PADCTRL0_INTSEL_SHIFT ; 
 int /*<<< orphan*/  CHV_PADCTRL1 ; 
 int CHV_PADCTRL1_INTWAKECFG_LEVEL ; 
 scalar_t__ IRQ_TYPE_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct irq_data*) ; 
 int /*<<< orphan*/  chv_lock ; 
 int /*<<< orphan*/  FUNC1 (struct chv_pinctrl*,unsigned int,int /*<<< orphan*/ ) ; 
 struct chv_pinctrl* FUNC2 (struct gpio_chip*) ; 
 int /*<<< orphan*/  handle_edge_irq ; 
 int /*<<< orphan*/  handle_level_irq ; 
 struct gpio_chip* FUNC3 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct irq_data*) ; 
 unsigned int FUNC6 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned FUNC10(struct irq_data *d)
{
	/*
	 * Check if the interrupt has been requested with 0 as triggering
	 * type. In that case it is assumed that the current values
	 * programmed to the hardware are used (e.g BIOS configured
	 * defaults).
	 *
	 * In that case ->irq_set_type() will never be called so we need to
	 * read back the values from hardware now, set correct flow handler
	 * and update mappings before the interrupt is being used.
	 */
	if (FUNC5(d) == IRQ_TYPE_NONE) {
		struct gpio_chip *gc = FUNC3(d);
		struct chv_pinctrl *pctrl = FUNC2(gc);
		unsigned int pin = FUNC6(d);
		irq_flow_handler_t handler;
		unsigned long flags;
		u32 intsel, value;

		FUNC7(&chv_lock, flags);
		intsel = FUNC9(FUNC1(pctrl, pin, CHV_PADCTRL0));
		intsel &= CHV_PADCTRL0_INTSEL_MASK;
		intsel >>= CHV_PADCTRL0_INTSEL_SHIFT;

		value = FUNC9(FUNC1(pctrl, pin, CHV_PADCTRL1));
		if (value & CHV_PADCTRL1_INTWAKECFG_LEVEL)
			handler = handle_level_irq;
		else
			handler = handle_edge_irq;

		if (!pctrl->intr_lines[intsel]) {
			FUNC4(d, handler);
			pctrl->intr_lines[intsel] = pin;
		}
		FUNC8(&chv_lock, flags);
	}

	FUNC0(d);
	return 0;
}