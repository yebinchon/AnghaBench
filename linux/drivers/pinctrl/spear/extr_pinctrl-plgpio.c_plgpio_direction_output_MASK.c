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
struct TYPE_2__ {int /*<<< orphan*/  dir; int /*<<< orphan*/  wdata; } ;
struct plgpio {unsigned int (* p2o ) (unsigned int) ;int p2o_regs; int /*<<< orphan*/  lock; TYPE_1__ regs; int /*<<< orphan*/  base; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int PTO_DIR_REG ; 
 int PTO_WDATA_REG ; 
 struct plgpio* FUNC0 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned int FUNC5 (unsigned int) ; 

__attribute__((used)) static int FUNC6(struct gpio_chip *chip, unsigned offset,
		int value)
{
	struct plgpio *plgpio = FUNC0(chip);
	unsigned long flags;
	unsigned dir_offset = offset, wdata_offset = offset, tmp;

	/* get correct offset for "offset" pin */
	if (plgpio->p2o && (plgpio->p2o_regs & (PTO_DIR_REG | PTO_WDATA_REG))) {
		tmp = plgpio->p2o(offset);
		if (tmp == -1)
			return -EINVAL;

		if (plgpio->p2o_regs & PTO_DIR_REG)
			dir_offset = tmp;
		if (plgpio->p2o_regs & PTO_WDATA_REG)
			wdata_offset = tmp;
	}

	FUNC3(&plgpio->lock, flags);
	if (value)
		FUNC2(plgpio->base, wdata_offset,
				plgpio->regs.wdata);
	else
		FUNC1(plgpio->base, wdata_offset,
				plgpio->regs.wdata);

	FUNC1(plgpio->base, dir_offset, plgpio->regs.dir);
	FUNC4(&plgpio->lock, flags);

	return 0;
}