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
typedef  size_t u32 ;
struct stmfx_pinctrl {size_t* irq_gpi_src; } ;
struct irq_data {int /*<<< orphan*/  hwirq; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 struct stmfx_pinctrl* FUNC2 (struct gpio_chip*) ; 
 struct gpio_chip* FUNC3 (struct irq_data*) ; 

__attribute__((used)) static void FUNC4(struct irq_data *data)
{
	struct gpio_chip *gpio_chip = FUNC3(data);
	struct stmfx_pinctrl *pctl = FUNC2(gpio_chip);
	u32 reg = FUNC1(data->hwirq);
	u32 mask = FUNC0(data->hwirq);

	pctl->irq_gpi_src[reg] &= ~mask;
}