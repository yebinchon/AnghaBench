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
struct iproc_pcie {int /*<<< orphan*/  phy; int /*<<< orphan*/  root_bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iproc_pcie*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct iproc_pcie *pcie)
{
	FUNC2(pcie->root_bus);
	FUNC1(pcie->root_bus);

	FUNC0(pcie);

	FUNC4(pcie->phy);
	FUNC3(pcie->phy);

	return 0;
}