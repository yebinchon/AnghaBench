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
struct pcs_soc_data {int dummy; } ;
struct irq_desc {int dummy; } ;
struct irq_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct irq_chip*,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_chip*,struct irq_desc*) ; 
 struct irq_chip* FUNC2 (struct irq_desc*) ; 
 struct pcs_soc_data* FUNC3 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC4 (struct pcs_soc_data*) ; 

__attribute__((used)) static void FUNC5(struct irq_desc *desc)
{
	struct pcs_soc_data *pcs_soc = FUNC3(desc);
	struct irq_chip *chip;

	chip = FUNC2(desc);
	FUNC0(chip, desc);
	FUNC4(pcs_soc);
	/* REVISIT: export and add handle_bad_irq(irq, desc)? */
	FUNC1(chip, desc);
}