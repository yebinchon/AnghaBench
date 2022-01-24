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
struct nwl_pcie {int dummy; } ;
struct irq_desc {int dummy; } ;
struct irq_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSGF_MSI_STATUS_LO ; 
 int /*<<< orphan*/  FUNC0 (struct irq_chip*,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_chip*,struct irq_desc*) ; 
 struct irq_chip* FUNC2 (struct irq_desc*) ; 
 struct nwl_pcie* FUNC3 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC4 (struct nwl_pcie*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct irq_desc *desc)
{
	struct irq_chip *chip = FUNC2(desc);
	struct nwl_pcie *pcie = FUNC3(desc);

	FUNC0(chip, desc);
	FUNC4(pcie, MSGF_MSI_STATUS_LO);
	FUNC1(chip, desc);
}