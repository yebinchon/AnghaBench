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
struct TYPE_2__ {int enb; } ;
struct plgpio {unsigned int (* p2o ) (unsigned int) ;int p2o_regs; int /*<<< orphan*/  clk; int /*<<< orphan*/  lock; TYPE_1__ regs; int /*<<< orphan*/  base; } ;
struct gpio_chip {unsigned int ngpio; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int PTO_ENB_REG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct plgpio* FUNC2 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned int FUNC7 (unsigned int) ; 

__attribute__((used)) static void FUNC8(struct gpio_chip *chip, unsigned offset)
{
	struct plgpio *plgpio = FUNC2(chip);
	int gpio = chip->base + offset;
	unsigned long flags;

	if (offset >= chip->ngpio)
		return;

	if (plgpio->regs.enb == -1)
		goto disable_clk;

	/* get correct offset for "offset" pin */
	if (plgpio->p2o && (plgpio->p2o_regs & PTO_ENB_REG)) {
		offset = plgpio->p2o(offset);
		if (offset == -1)
			return;
	}

	FUNC5(&plgpio->lock, flags);
	FUNC4(plgpio->base, offset, plgpio->regs.enb);
	FUNC6(&plgpio->lock, flags);

disable_clk:
	if (!FUNC0(plgpio->clk))
		FUNC1(plgpio->clk);

	FUNC3(gpio);
}