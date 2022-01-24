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
struct irq_data {int dummy; } ;
struct faraday_pci {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FARADAY_PCI_CTRL2 ; 
 scalar_t__ PCI_CTRL2_INTMASK_SHIFT ; 
 int PCI_CTRL2_INTSTS_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (struct faraday_pci*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (struct faraday_pci*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned int) ; 
 struct faraday_pci* FUNC3 (struct irq_data*) ; 
 scalar_t__ FUNC4 (struct irq_data*) ; 

__attribute__((used)) static void FUNC5(struct irq_data *d)
{
	struct faraday_pci *p = FUNC3(d);
	unsigned int reg;

	FUNC1(p, 0, 0, FARADAY_PCI_CTRL2, 4, &reg);
	reg &= ~(0xF << PCI_CTRL2_INTSTS_SHIFT);
	reg |= FUNC0(FUNC4(d) + PCI_CTRL2_INTMASK_SHIFT);
	FUNC2(p, 0, 0, FARADAY_PCI_CTRL2, 4, reg);
}