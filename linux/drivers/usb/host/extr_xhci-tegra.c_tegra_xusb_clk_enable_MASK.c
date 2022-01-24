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
struct tegra_xusb {int /*<<< orphan*/  pll_e; int /*<<< orphan*/  host_clk; int /*<<< orphan*/  ss_clk; int /*<<< orphan*/  falcon_clk; int /*<<< orphan*/  fs_src_clk; int /*<<< orphan*/  hs_src_clk; TYPE_1__* soc; } ;
struct TYPE_2__ {scalar_t__ scale_ss_clock; } ;

/* Variables and functions */
 int /*<<< orphan*/  TEGRA_XHCI_SS_HIGH_SPEED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct tegra_xusb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct tegra_xusb *tegra)
{
	int err;

	err = FUNC1(tegra->pll_e);
	if (err < 0)
		return err;

	err = FUNC1(tegra->host_clk);
	if (err < 0)
		goto disable_plle;

	err = FUNC1(tegra->ss_clk);
	if (err < 0)
		goto disable_host;

	err = FUNC1(tegra->falcon_clk);
	if (err < 0)
		goto disable_ss;

	err = FUNC1(tegra->fs_src_clk);
	if (err < 0)
		goto disable_falc;

	err = FUNC1(tegra->hs_src_clk);
	if (err < 0)
		goto disable_fs_src;

	if (tegra->soc->scale_ss_clock) {
		err = FUNC2(tegra, TEGRA_XHCI_SS_HIGH_SPEED);
		if (err < 0)
			goto disable_hs_src;
	}

	return 0;

disable_hs_src:
	FUNC0(tegra->hs_src_clk);
disable_fs_src:
	FUNC0(tegra->fs_src_clk);
disable_falc:
	FUNC0(tegra->falcon_clk);
disable_ss:
	FUNC0(tegra->ss_clk);
disable_host:
	FUNC0(tegra->host_clk);
disable_plle:
	FUNC0(tegra->pll_e);
	return err;
}