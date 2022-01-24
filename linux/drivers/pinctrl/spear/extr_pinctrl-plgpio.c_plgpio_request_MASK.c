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
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int PTO_ENB_REG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct plgpio* FUNC3 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (struct gpio_chip*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned int FUNC10 (unsigned int) ; 

__attribute__((used)) static int FUNC11(struct gpio_chip *chip, unsigned offset)
{
	struct plgpio *plgpio = FUNC3(chip);
	int gpio = chip->base + offset;
	unsigned long flags;
	int ret = 0;

	if (offset >= chip->ngpio)
		return -EINVAL;

	ret = FUNC5(gpio);
	if (ret)
		return ret;

	if (!FUNC0(plgpio->clk)) {
		ret = FUNC2(plgpio->clk);
		if (ret)
			goto err0;
	}

	if (plgpio->regs.enb == -1)
		return 0;

	/*
	 * put gpio in IN mode before enabling it. This make enabling gpio safe
	 */
	ret = FUNC6(chip, offset);
	if (ret)
		goto err1;

	/* get correct offset for "offset" pin */
	if (plgpio->p2o && (plgpio->p2o_regs & PTO_ENB_REG)) {
		offset = plgpio->p2o(offset);
		if (offset == -1) {
			ret = -EINVAL;
			goto err1;
		}
	}

	FUNC8(&plgpio->lock, flags);
	FUNC7(plgpio->base, offset, plgpio->regs.enb);
	FUNC9(&plgpio->lock, flags);
	return 0;

err1:
	if (!FUNC0(plgpio->clk))
		FUNC1(plgpio->clk);
err0:
	FUNC4(gpio);
	return ret;
}