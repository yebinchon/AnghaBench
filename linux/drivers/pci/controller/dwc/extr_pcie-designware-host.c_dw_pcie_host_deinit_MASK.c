#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pcie_port {TYPE_1__* ops; int /*<<< orphan*/  root_bus; } ;
struct TYPE_2__ {int /*<<< orphan*/  msi_host_init; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pcie_port*) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct pcie_port *pp)
{
	FUNC3(pp->root_bus);
	FUNC2(pp->root_bus);
	if (FUNC1() && !pp->ops->msi_host_init)
		FUNC0(pp);
}