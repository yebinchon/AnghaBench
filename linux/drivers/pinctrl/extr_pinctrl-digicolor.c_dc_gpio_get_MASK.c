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
typedef  int u8 ;
struct gpio_chip {int dummy; } ;
struct dc_pinmap {scalar_t__ regs; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (unsigned int) ; 
 unsigned int PINS_PER_COLLECTION ; 
 struct dc_pinmap* FUNC2 (struct gpio_chip*) ; 
 int FUNC3 (scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct gpio_chip *chip, unsigned gpio)
{
	struct dc_pinmap *pmap = FUNC2(chip);
	int reg_off = FUNC1(gpio/PINS_PER_COLLECTION);
	int bit_off = gpio % PINS_PER_COLLECTION;
	u8 input;

	input = FUNC3(pmap->regs + reg_off);

	return !!(input & FUNC0(bit_off));
}