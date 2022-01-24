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
struct gpio_chip {int dummy; } ;
struct atmel_pioctrl {struct atmel_pin** pins; } ;
struct atmel_pin {int /*<<< orphan*/  bank; int /*<<< orphan*/  line; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATMEL_PIO_CFGR ; 
 unsigned int ATMEL_PIO_DIR_MASK ; 
 int /*<<< orphan*/  ATMEL_PIO_MSKR ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct atmel_pioctrl*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct atmel_pioctrl*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 struct atmel_pioctrl* FUNC3 (struct gpio_chip*) ; 

__attribute__((used)) static int FUNC4(struct gpio_chip *chip, unsigned offset)
{
	struct atmel_pioctrl *atmel_pioctrl = FUNC3(chip);
	struct atmel_pin *pin = atmel_pioctrl->pins[offset];
	unsigned reg;

	FUNC2(atmel_pioctrl, pin->bank, ATMEL_PIO_MSKR,
			 FUNC0(pin->line));
	reg = FUNC1(atmel_pioctrl, pin->bank, ATMEL_PIO_CFGR);
	reg &= ~ATMEL_PIO_DIR_MASK;
	FUNC2(atmel_pioctrl, pin->bank, ATMEL_PIO_CFGR, reg);

	return 0;
}