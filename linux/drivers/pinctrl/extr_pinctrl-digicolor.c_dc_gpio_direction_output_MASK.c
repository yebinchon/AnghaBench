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
typedef  int /*<<< orphan*/  u8 ;
struct gpio_chip {int dummy; } ;
struct dc_pinmap {int /*<<< orphan*/  lock; scalar_t__ regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (unsigned int) ; 
 unsigned int PINS_PER_COLLECTION ; 
 int /*<<< orphan*/  FUNC2 (struct gpio_chip*,unsigned int,int) ; 
 struct dc_pinmap* FUNC3 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct gpio_chip *chip, unsigned gpio,
				    int value)
{
	struct dc_pinmap *pmap = FUNC3(chip);
	int reg_off = FUNC1(gpio/PINS_PER_COLLECTION);
	int bit_off = gpio % PINS_PER_COLLECTION;
	u8 drive;
	unsigned long flags;

	FUNC2(chip, gpio, value);

	FUNC5(&pmap->lock, flags);
	drive = FUNC4(pmap->regs + reg_off);
	drive |= FUNC0(bit_off);
	FUNC7(drive, pmap->regs + reg_off);
	FUNC6(&pmap->lock, flags);

	return 0;
}