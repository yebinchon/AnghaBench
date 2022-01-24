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
typedef  size_t u32 ;
struct stmfx_pinctrl {size_t* irq_toggle_edge; size_t* irq_gpi_type; size_t* irq_gpi_evt; size_t* irq_gpi_src; int /*<<< orphan*/  lock; TYPE_1__* stmfx; } ;
struct irq_data {int /*<<< orphan*/  hwirq; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  map; } ;

/* Variables and functions */
 int /*<<< orphan*/  NR_GPIO_REGS ; 
 int /*<<< orphan*/  STMFX_REG_IRQ_GPI_EVT ; 
 int /*<<< orphan*/  STMFX_REG_IRQ_GPI_SRC ; 
 int /*<<< orphan*/  STMFX_REG_IRQ_GPI_TYPE ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 struct stmfx_pinctrl* FUNC2 (struct gpio_chip*) ; 
 struct gpio_chip* FUNC3 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct gpio_chip*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct irq_data *data)
{
	struct gpio_chip *gpio_chip = FUNC3(data);
	struct stmfx_pinctrl *pctl = FUNC2(gpio_chip);
	u32 reg = FUNC1(data->hwirq);
	u32 mask = FUNC0(data->hwirq);

	/*
	 * In case of IRQ_TYPE_EDGE_BOTH), read the current GPIO value
	 * (this couldn't be done in .irq_set_type because of atomic context)
	 * to set the right irq trigger type.
	 */
	if (pctl->irq_toggle_edge[reg] & mask) {
		if (FUNC6(gpio_chip, data->hwirq))
			pctl->irq_gpi_type[reg] &= ~mask;
		else
			pctl->irq_gpi_type[reg] |= mask;
	}

	FUNC5(pctl->stmfx->map, STMFX_REG_IRQ_GPI_EVT,
			  pctl->irq_gpi_evt, NR_GPIO_REGS);
	FUNC5(pctl->stmfx->map, STMFX_REG_IRQ_GPI_TYPE,
			  pctl->irq_gpi_type, NR_GPIO_REGS);
	FUNC5(pctl->stmfx->map, STMFX_REG_IRQ_GPI_SRC,
			  pctl->irq_gpi_src, NR_GPIO_REGS);

	FUNC4(&pctl->lock);
}