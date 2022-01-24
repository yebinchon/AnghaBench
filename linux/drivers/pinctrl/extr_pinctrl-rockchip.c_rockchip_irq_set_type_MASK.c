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
struct rockchip_pin_bank {int toggle_edge_mode; int /*<<< orphan*/  clk; int /*<<< orphan*/  slock; scalar_t__ reg_base; } ;
struct irq_data {int /*<<< orphan*/  hwirq; } ;
struct irq_chip_generic {scalar_t__ reg_base; struct rockchip_pin_bank* private; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 scalar_t__ GPIO_EXT_PORT ; 
 scalar_t__ GPIO_INTTYPE_LEVEL ; 
 scalar_t__ GPIO_INT_POLARITY ; 
 scalar_t__ GPIO_SWPORT_DDR ; 
#define  IRQ_TYPE_EDGE_BOTH 132 
#define  IRQ_TYPE_EDGE_FALLING 131 
#define  IRQ_TYPE_EDGE_RISING 130 
#define  IRQ_TYPE_LEVEL_HIGH 129 
#define  IRQ_TYPE_LEVEL_LOW 128 
 int /*<<< orphan*/  RK_FUNC_GPIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  handle_edge_irq ; 
 int /*<<< orphan*/  handle_level_irq ; 
 struct irq_chip_generic* FUNC3 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_chip_generic*) ; 
 int /*<<< orphan*/  FUNC5 (struct irq_chip_generic*) ; 
 int /*<<< orphan*/  FUNC6 (struct irq_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC9 (scalar_t__) ; 
 int FUNC10 (scalar_t__) ; 
 int FUNC11 (struct rockchip_pin_bank*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC13(struct irq_data *d, unsigned int type)
{
	struct irq_chip_generic *gc = FUNC3(d);
	struct rockchip_pin_bank *bank = gc->private;
	u32 mask = FUNC0(d->hwirq);
	u32 polarity;
	u32 level;
	u32 data;
	unsigned long flags;
	int ret;

	/* make sure the pin is configured as gpio input */
	ret = FUNC11(bank, d->hwirq, RK_FUNC_GPIO);
	if (ret < 0)
		return ret;

	FUNC2(bank->clk);
	FUNC7(&bank->slock, flags);

	data = FUNC10(bank->reg_base + GPIO_SWPORT_DDR);
	data &= ~mask;
	FUNC12(data, bank->reg_base + GPIO_SWPORT_DDR);

	FUNC8(&bank->slock, flags);

	if (type & IRQ_TYPE_EDGE_BOTH)
		FUNC6(d, handle_edge_irq);
	else
		FUNC6(d, handle_level_irq);

	FUNC7(&bank->slock, flags);
	FUNC4(gc);

	level = FUNC10(gc->reg_base + GPIO_INTTYPE_LEVEL);
	polarity = FUNC10(gc->reg_base + GPIO_INT_POLARITY);

	switch (type) {
	case IRQ_TYPE_EDGE_BOTH:
		bank->toggle_edge_mode |= mask;
		level |= mask;

		/*
		 * Determine gpio state. If 1 next interrupt should be falling
		 * otherwise rising.
		 */
		data = FUNC9(bank->reg_base + GPIO_EXT_PORT);
		if (data & mask)
			polarity &= ~mask;
		else
			polarity |= mask;
		break;
	case IRQ_TYPE_EDGE_RISING:
		bank->toggle_edge_mode &= ~mask;
		level |= mask;
		polarity |= mask;
		break;
	case IRQ_TYPE_EDGE_FALLING:
		bank->toggle_edge_mode &= ~mask;
		level |= mask;
		polarity &= ~mask;
		break;
	case IRQ_TYPE_LEVEL_HIGH:
		bank->toggle_edge_mode &= ~mask;
		level &= ~mask;
		polarity |= mask;
		break;
	case IRQ_TYPE_LEVEL_LOW:
		bank->toggle_edge_mode &= ~mask;
		level &= ~mask;
		polarity &= ~mask;
		break;
	default:
		FUNC5(gc);
		FUNC8(&bank->slock, flags);
		FUNC1(bank->clk);
		return -EINVAL;
	}

	FUNC12(level, gc->reg_base + GPIO_INTTYPE_LEVEL);
	FUNC12(polarity, gc->reg_base + GPIO_INT_POLARITY);

	FUNC5(gc);
	FUNC8(&bank->slock, flags);
	FUNC1(bank->clk);

	return 0;
}