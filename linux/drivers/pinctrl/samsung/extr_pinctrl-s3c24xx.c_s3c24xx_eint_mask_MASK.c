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
struct samsung_pinctrl_drv_data {scalar_t__ virt_base; } ;
struct samsung_pin_bank {unsigned char eint_offset; struct samsung_pinctrl_drv_data* drvdata; } ;
struct irq_data {unsigned char hwirq; } ;

/* Variables and functions */
 scalar_t__ EINTMASK_REG ; 
 struct samsung_pin_bank* FUNC0 (struct irq_data*) ; 
 unsigned long FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct irq_data *data)
{
	struct samsung_pin_bank *bank = FUNC0(data);
	struct samsung_pinctrl_drv_data *d = bank->drvdata;
	unsigned char index = bank->eint_offset + data->hwirq;
	unsigned long mask;

	mask = FUNC1(d->virt_base + EINTMASK_REG);
	mask |= (1UL << index);
	FUNC2(mask, d->virt_base + EINTMASK_REG);
}