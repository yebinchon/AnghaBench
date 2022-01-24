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
struct rockchip_pin_bank {int /*<<< orphan*/  clk; int /*<<< orphan*/  saved_masks; } ;
struct irq_data {int dummy; } ;
struct irq_chip_generic {struct rockchip_pin_bank* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO_INTMASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct irq_chip_generic* FUNC2 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_chip_generic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct irq_data *d)
{
	struct irq_chip_generic *gc = FUNC2(d);
	struct rockchip_pin_bank *bank = gc->private;

	FUNC1(bank->clk);
	FUNC3(gc, bank->saved_masks, GPIO_INTMASK);
	FUNC0(bank->clk);
}