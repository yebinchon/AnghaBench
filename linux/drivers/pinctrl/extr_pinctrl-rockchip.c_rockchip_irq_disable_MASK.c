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
struct rockchip_pin_bank {int /*<<< orphan*/  clk; } ;
struct irq_data {int dummy; } ;
struct irq_chip_generic {struct rockchip_pin_bank* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct irq_chip_generic* FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_data*) ; 

__attribute__((used)) static void FUNC3(struct irq_data *d)
{
	struct irq_chip_generic *gc = FUNC1(d);
	struct rockchip_pin_bank *bank = gc->private;

	FUNC2(d);
	FUNC0(bank->clk);
}