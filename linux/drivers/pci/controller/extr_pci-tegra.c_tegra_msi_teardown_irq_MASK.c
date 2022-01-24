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
struct tegra_msi {int dummy; } ;
struct msi_controller {int dummy; } ;
struct irq_data {int dummy; } ;
typedef  int /*<<< orphan*/  irq_hw_number_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 struct irq_data* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_msi*,int /*<<< orphan*/ ) ; 
 struct tegra_msi* FUNC4 (struct msi_controller*) ; 

__attribute__((used)) static void FUNC5(struct msi_controller *chip,
				   unsigned int irq)
{
	struct tegra_msi *msi = FUNC4(chip);
	struct irq_data *d = FUNC1(irq);
	irq_hw_number_t hwirq = FUNC2(d);

	FUNC0(irq);
	FUNC3(msi, hwirq);
}