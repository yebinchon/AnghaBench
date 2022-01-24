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
struct rcar_msi {int dummy; } ;
struct msi_controller {int dummy; } ;
struct irq_data {int /*<<< orphan*/  hwirq; } ;

/* Variables and functions */
 struct irq_data* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct rcar_msi*,int /*<<< orphan*/ ) ; 
 struct rcar_msi* FUNC2 (struct msi_controller*) ; 

__attribute__((used)) static void FUNC3(struct msi_controller *chip, unsigned int irq)
{
	struct rcar_msi *msi = FUNC2(chip);
	struct irq_data *d = FUNC0(irq);

	FUNC1(msi, d->hwirq);
}