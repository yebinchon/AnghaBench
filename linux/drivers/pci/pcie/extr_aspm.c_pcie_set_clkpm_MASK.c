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
struct pcie_link_state {int clkpm_enabled; int /*<<< orphan*/  clkpm_capable; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pcie_link_state*,int) ; 

__attribute__((used)) static void FUNC1(struct pcie_link_state *link, int enable)
{
	/* Don't enable Clock PM if the link is not Clock PM capable */
	if (!link->clkpm_capable)
		enable = 0;
	/* Need nothing if the specified equals to current state */
	if (link->clkpm_enabled == enable)
		return;
	FUNC0(link, enable);
}