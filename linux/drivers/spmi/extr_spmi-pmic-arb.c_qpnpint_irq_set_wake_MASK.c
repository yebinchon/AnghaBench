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
struct spmi_pmic_arb {int /*<<< orphan*/  irq; } ;
struct irq_data {int dummy; } ;

/* Variables and functions */
 struct spmi_pmic_arb* FUNC0 (struct irq_data*) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct irq_data *d, unsigned int on)
{
	struct spmi_pmic_arb *pmic_arb = FUNC0(d);

	return FUNC1(pmic_arb->irq, on);
}