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
struct nmk_gpio_chip {int rwimsc; int fwimsc; scalar_t__ addr; int /*<<< orphan*/  (* set_ioforce ) (int) ;} ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 scalar_t__ NMK_GPIO_FWIMSC ; 
 scalar_t__ NMK_GPIO_RWIMSC ; 
 int /*<<< orphan*/  FUNC1 (struct nmk_gpio_chip*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct nmk_gpio_chip *nmk_chip,
				     unsigned offset, int gpio_mode,
				     bool glitch)
{
	u32 rwimsc = nmk_chip->rwimsc;
	u32 fwimsc = nmk_chip->fwimsc;

	if (glitch && nmk_chip->set_ioforce) {
		u32 bit = FUNC0(offset);

		/* Prevent spurious wakeups */
		FUNC4(rwimsc & ~bit, nmk_chip->addr + NMK_GPIO_RWIMSC);
		FUNC4(fwimsc & ~bit, nmk_chip->addr + NMK_GPIO_FWIMSC);

		nmk_chip->set_ioforce(true);
	}

	FUNC1(nmk_chip, offset, gpio_mode);

	if (glitch && nmk_chip->set_ioforce) {
		nmk_chip->set_ioforce(false);

		FUNC4(rwimsc, nmk_chip->addr + NMK_GPIO_RWIMSC);
		FUNC4(fwimsc, nmk_chip->addr + NMK_GPIO_FWIMSC);
	}
}