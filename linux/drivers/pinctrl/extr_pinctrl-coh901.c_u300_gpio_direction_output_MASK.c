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
typedef  unsigned int u32 ;
struct u300_gpio {int dummy; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 unsigned int U300_GPIO_PXPCR_PIN_MODE_MASK ; 
 unsigned int U300_GPIO_PXPCR_PIN_MODE_OUTPUT_PUSH_PULL ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 struct u300_gpio* FUNC1 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  pcr ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct gpio_chip*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct gpio_chip *chip, unsigned offset,
				      int value)
{
	struct u300_gpio *gpio = FUNC1(chip);
	unsigned long flags;
	u32 oldmode;
	u32 val;

	FUNC3(flags);
	val = FUNC4(FUNC0(offset, pcr));
	/*
	 * Drive mode must be set by the special mode set function, set
	 * push/pull mode by default if no mode has been selected.
	 */
	oldmode = val & (U300_GPIO_PXPCR_PIN_MODE_MASK <<
			 ((offset & 0x07) << 1));
	/* mode = 0 means input, else some mode is already set */
	if (oldmode == 0) {
		val &= ~(U300_GPIO_PXPCR_PIN_MODE_MASK <<
			 ((offset & 0x07) << 1));
		val |= (U300_GPIO_PXPCR_PIN_MODE_OUTPUT_PUSH_PULL
			<< ((offset & 0x07) << 1));
		FUNC6(val, FUNC0(offset, pcr));
	}
	FUNC5(chip, offset, value);
	FUNC2(flags);
	return 0;
}