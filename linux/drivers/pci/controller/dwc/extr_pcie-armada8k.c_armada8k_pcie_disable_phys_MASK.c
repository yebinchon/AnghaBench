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
struct armada8k_pcie {int /*<<< orphan*/ * phy; } ;

/* Variables and functions */
 int ARMADA8K_PCIE_MAX_LANES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct armada8k_pcie *pcie)
{
	int i;

	for (i = 0; i < ARMADA8K_PCIE_MAX_LANES; i++) {
		FUNC1(pcie->phy[i]);
		FUNC0(pcie->phy[i]);
	}
}