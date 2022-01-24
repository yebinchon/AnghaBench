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
struct irq_data {size_t hwirq; } ;
struct atmel_pioctrl {struct atmel_pin** pins; } ;
struct atmel_pin {int /*<<< orphan*/  line; int /*<<< orphan*/  bank; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATMEL_PIO_IER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct atmel_pioctrl*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct atmel_pioctrl* FUNC2 (struct irq_data*) ; 

__attribute__((used)) static void FUNC3(struct irq_data *d)
{
	struct atmel_pioctrl *atmel_pioctrl = FUNC2(d);
	struct atmel_pin *pin = atmel_pioctrl->pins[d->hwirq];

	FUNC1(atmel_pioctrl, pin->bank, ATMEL_PIO_IER,
			 FUNC0(pin->line));
}