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
struct pcie_port {scalar_t__ msi_page; int /*<<< orphan*/  irq_domain; int /*<<< orphan*/  msi_domain; scalar_t__ msi_irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *) ; 

void FUNC4(struct pcie_port *pp)
{
	if (pp->msi_irq) {
		FUNC2(pp->msi_irq, NULL);
		FUNC3(pp->msi_irq, NULL);
	}

	FUNC1(pp->msi_domain);
	FUNC1(pp->irq_domain);

	if (pp->msi_page)
		FUNC0(pp->msi_page);
}