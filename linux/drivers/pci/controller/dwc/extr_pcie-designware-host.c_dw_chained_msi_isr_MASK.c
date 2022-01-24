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
struct pcie_port {int dummy; } ;
struct irq_desc {int dummy; } ;
struct irq_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct irq_chip*,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_chip*,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC2 (struct pcie_port*) ; 
 struct irq_chip* FUNC3 (struct irq_desc*) ; 
 struct pcie_port* FUNC4 (struct irq_desc*) ; 

__attribute__((used)) static void FUNC5(struct irq_desc *desc)
{
	struct irq_chip *chip = FUNC3(desc);
	struct pcie_port *pp;

	FUNC0(chip, desc);

	pp = FUNC4(desc);
	FUNC2(pp);

	FUNC1(chip, desc);
}