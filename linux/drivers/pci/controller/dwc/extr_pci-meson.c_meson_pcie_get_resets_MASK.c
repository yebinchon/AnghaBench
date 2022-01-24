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
struct meson_pcie_rc_reset {void* apb; void* port; void* phy; } ;
struct meson_pcie {struct meson_pcie_rc_reset mrst; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  PCIE_NORMAL_RESET ; 
 int /*<<< orphan*/  PCIE_SHARED_RESET ; 
 int FUNC1 (void*) ; 
 void* FUNC2 (struct meson_pcie*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 

__attribute__((used)) static int FUNC4(struct meson_pcie *mp)
{
	struct meson_pcie_rc_reset *mrst = &mp->mrst;

	mrst->phy = FUNC2(mp, "phy", PCIE_SHARED_RESET);
	if (FUNC0(mrst->phy))
		return FUNC1(mrst->phy);
	FUNC3(mrst->phy);

	mrst->port = FUNC2(mp, "port", PCIE_NORMAL_RESET);
	if (FUNC0(mrst->port))
		return FUNC1(mrst->port);
	FUNC3(mrst->port);

	mrst->apb = FUNC2(mp, "apb", PCIE_SHARED_RESET);
	if (FUNC0(mrst->apb))
		return FUNC1(mrst->apb);
	FUNC3(mrst->apb);

	return 0;
}