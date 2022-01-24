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
struct TYPE_2__ {int /*<<< orphan*/  rdata; } ;
struct plgpio {unsigned int (* p2o ) (unsigned int) ;int p2o_regs; TYPE_1__ regs; int /*<<< orphan*/  base; } ;
struct gpio_chip {unsigned int ngpio; } ;

/* Variables and functions */
 int EINVAL ; 
 int PTO_RDATA_REG ; 
 struct plgpio* FUNC0 (struct gpio_chip*) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (unsigned int) ; 

__attribute__((used)) static int FUNC3(struct gpio_chip *chip, unsigned offset)
{
	struct plgpio *plgpio = FUNC0(chip);

	if (offset >= chip->ngpio)
		return -EINVAL;

	/* get correct offset for "offset" pin */
	if (plgpio->p2o && (plgpio->p2o_regs & PTO_RDATA_REG)) {
		offset = plgpio->p2o(offset);
		if (offset == -1)
			return -EINVAL;
	}

	return FUNC1(plgpio->base, offset, plgpio->regs.rdata);
}