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
struct atmel_pin {int /*<<< orphan*/  line; int /*<<< orphan*/  bank; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATMEL_PIO_PDSR ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct atmel_pioctrl*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct atmel_pioctrl* FUNC2 (struct gpio_chip*) ; 

__attribute__((used)) static int FUNC3(struct gpio_chip *chip, unsigned offset)
{
	struct atmel_pioctrl *atmel_pioctrl = FUNC2(chip);
	struct atmel_pin *pin = atmel_pioctrl->pins[offset];
	unsigned reg;

	reg = FUNC1(atmel_pioctrl, pin->bank, ATMEL_PIO_PDSR);

	return !!(reg & FUNC0(pin->line));
}