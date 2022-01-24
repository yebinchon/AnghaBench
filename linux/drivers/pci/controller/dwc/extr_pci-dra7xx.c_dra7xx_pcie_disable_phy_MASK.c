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
struct dra7xx_pcie {int phy_count; int /*<<< orphan*/ * phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct dra7xx_pcie *dra7xx)
{
	int phy_count = dra7xx->phy_count;

	while (phy_count--) {
		FUNC1(dra7xx->phy[phy_count]);
		FUNC0(dra7xx->phy[phy_count]);
	}
}