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
struct samsung_pin_bank {int /*<<< orphan*/  irq_domain; } ;
struct irq_desc {int dummy; } ;
struct irq_chip {int dummy; } ;
struct exynos_weint_data {int /*<<< orphan*/  irq; struct samsung_pin_bank* bank; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct irq_chip*,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_chip*,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct irq_chip* FUNC3 (struct irq_desc*) ; 
 struct exynos_weint_data* FUNC4 (struct irq_desc*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct irq_desc *desc)
{
	struct exynos_weint_data *eintd = FUNC4(desc);
	struct samsung_pin_bank *bank = eintd->bank;
	struct irq_chip *chip = FUNC3(desc);
	int eint_irq;

	FUNC0(chip, desc);

	eint_irq = FUNC5(bank->irq_domain, eintd->irq);
	FUNC2(eint_irq);

	FUNC1(chip, desc);
}