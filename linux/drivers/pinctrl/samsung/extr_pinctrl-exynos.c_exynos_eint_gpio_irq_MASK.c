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
struct samsung_pinctrl_drv_data {struct samsung_pin_bank* pin_banks; } ;
struct samsung_pin_bank {int /*<<< orphan*/  irq_domain; scalar_t__ eint_base; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int EXYNOS_SVC_NUM_MASK ; 
 scalar_t__ EXYNOS_SVC_OFFSET ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC3 (scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *data)
{
	struct samsung_pinctrl_drv_data *d = data;
	struct samsung_pin_bank *bank = d->pin_banks;
	unsigned int svc, group, pin, virq;

	svc = FUNC3(bank->eint_base + EXYNOS_SVC_OFFSET);
	group = FUNC0(svc);
	pin = svc & EXYNOS_SVC_NUM_MASK;

	if (!group)
		return IRQ_HANDLED;
	bank += (group - 1);

	virq = FUNC2(bank->irq_domain, pin);
	if (!virq)
		return IRQ_NONE;
	FUNC1(virq);
	return IRQ_HANDLED;
}