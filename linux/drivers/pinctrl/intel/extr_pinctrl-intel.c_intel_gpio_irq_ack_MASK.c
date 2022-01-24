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
struct irq_data {int dummy; } ;
struct intel_pinctrl {int /*<<< orphan*/  lock; } ;
struct intel_padgroup {unsigned int reg_num; } ;
struct intel_community {unsigned int is_offset; scalar_t__ regs; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 struct intel_pinctrl* FUNC1 (struct gpio_chip*) ; 
 int FUNC2 (struct intel_pinctrl*,int /*<<< orphan*/ ,struct intel_community const**,struct intel_padgroup const**) ; 
 struct gpio_chip* FUNC3 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_data*) ; 
 unsigned int FUNC5 (struct intel_padgroup const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC9(struct irq_data *d)
{
	struct gpio_chip *gc = FUNC3(d);
	struct intel_pinctrl *pctrl = FUNC1(gc);
	const struct intel_community *community;
	const struct intel_padgroup *padgrp;
	int pin;

	pin = FUNC2(pctrl, FUNC4(d), &community, &padgrp);
	if (pin >= 0) {
		unsigned int gpp, gpp_offset, is_offset;

		gpp = padgrp->reg_num;
		gpp_offset = FUNC5(padgrp, pin);
		is_offset = community->is_offset + gpp * 4;

		FUNC6(&pctrl->lock);
		FUNC8(FUNC0(gpp_offset), community->regs + is_offset);
		FUNC7(&pctrl->lock);
	}
}