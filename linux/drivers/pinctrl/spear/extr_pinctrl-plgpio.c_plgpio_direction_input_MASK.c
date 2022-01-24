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
struct TYPE_2__ {int /*<<< orphan*/  dir; } ;
struct plgpio {unsigned int (* p2o ) (unsigned int) ;int p2o_regs; int /*<<< orphan*/  lock; TYPE_1__ regs; int /*<<< orphan*/  base; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int PTO_DIR_REG ; 
 struct plgpio* FUNC0 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned int FUNC4 (unsigned int) ; 

__attribute__((used)) static int FUNC5(struct gpio_chip *chip, unsigned offset)
{
	struct plgpio *plgpio = FUNC0(chip);
	unsigned long flags;

	/* get correct offset for "offset" pin */
	if (plgpio->p2o && (plgpio->p2o_regs & PTO_DIR_REG)) {
		offset = plgpio->p2o(offset);
		if (offset == -1)
			return -EINVAL;
	}

	FUNC2(&plgpio->lock, flags);
	FUNC1(plgpio->base, offset, plgpio->regs.dir);
	FUNC3(&plgpio->lock, flags);

	return 0;
}