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
struct rcar_msi {int /*<<< orphan*/  pages; } ;
struct rcar_pcie {struct rcar_msi msi; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCIEMSIALR ; 
 int /*<<< orphan*/  PCIEMSIIER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rcar_pcie*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rcar_pcie*) ; 

__attribute__((used)) static void FUNC3(struct rcar_pcie *pcie)
{
	struct rcar_msi *msi = &pcie->msi;

	/* Disable all MSI interrupts */
	FUNC1(pcie, 0, PCIEMSIIER);

	/* Disable address decoding of the MSI interrupt, MSIFE */
	FUNC1(pcie, 0, PCIEMSIALR);

	FUNC0(msi->pages, 0);

	FUNC2(pcie);
}