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
struct st_gpio_bank {scalar_t__ base; } ;

/* Variables and functions */
 unsigned int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct st_gpio_bank *bank,
		unsigned int gpio, unsigned int direction)
{
	int offset = FUNC3(gpio);
	int i = 0;
	/**
	 * There are three configuration registers (PIOn_PC0, PIOn_PC1
	 * and PIOn_PC2) for each port. These are used to configure the
	 * PIO port pins. Each pin can be configured as an input, output,
	 * bidirectional, or alternative function pin. Three bits, one bit
	 * from each of the three registers, configure the corresponding bit of
	 * the port. Valid bit settings is:
	 *
	 * PC2		PC1		PC0	Direction.
	 * 0		0		0	[Input Weak pull-up]
	 * 0		0 or 1		1	[Bidirection]
	 * 0		1		0	[Output]
	 * 1		0		0	[Input]
	 *
	 * PIOn_SET_PC and PIOn_CLR_PC registers are used to set and clear bits
	 * individually.
	 */
	for (i = 0; i <= 2; i++) {
		if (direction & FUNC0(i))
			FUNC4(FUNC0(offset), bank->base + FUNC2(i));
		else
			FUNC4(FUNC0(offset), bank->base + FUNC1(i));
	}
}