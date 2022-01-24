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
typedef  int /*<<< orphan*/  u32 ;
struct nmk_gpio_chip {int /*<<< orphan*/  clk; scalar_t__ addr; } ;
struct irq_desc {int dummy; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 scalar_t__ NMK_GPIO_IS ; 
 int /*<<< orphan*/  FUNC0 (struct irq_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct nmk_gpio_chip* FUNC3 (struct gpio_chip*) ; 
 struct gpio_chip* FUNC4 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct irq_desc *desc)
{
	struct gpio_chip *chip = FUNC4(desc);
	struct nmk_gpio_chip *nmk_chip = FUNC3(chip);
	u32 status;

	FUNC2(nmk_chip->clk);
	status = FUNC5(nmk_chip->addr + NMK_GPIO_IS);
	FUNC1(nmk_chip->clk);

	FUNC0(desc, status);
}