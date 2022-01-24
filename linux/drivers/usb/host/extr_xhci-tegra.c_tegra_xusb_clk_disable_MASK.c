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
struct tegra_xusb {int /*<<< orphan*/  hs_src_clk; int /*<<< orphan*/  fs_src_clk; int /*<<< orphan*/  falcon_clk; int /*<<< orphan*/  ss_clk; int /*<<< orphan*/  host_clk; int /*<<< orphan*/  pll_e; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct tegra_xusb *tegra)
{
	FUNC0(tegra->pll_e);
	FUNC0(tegra->host_clk);
	FUNC0(tegra->ss_clk);
	FUNC0(tegra->falcon_clk);
	FUNC0(tegra->fs_src_clk);
	FUNC0(tegra->hs_src_clk);
}