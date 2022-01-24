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
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 struct u300_gpio* FUNC1 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  pcr ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct gpio_chip *chip, unsigned offset)
{
	struct u300_gpio *gpio = FUNC1(chip);
	unsigned long flags;
	u32 val;

	FUNC3(flags);
	val = FUNC4(FUNC0(offset, pcr));
	/* Mask out this pin, note 2 bits per setting */
	val &= ~(U300_GPIO_PXPCR_PIN_MODE_MASK << ((offset & 0x07) << 1));
	FUNC5(val, FUNC0(offset, pcr));
	FUNC2(flags);
	return 0;
}