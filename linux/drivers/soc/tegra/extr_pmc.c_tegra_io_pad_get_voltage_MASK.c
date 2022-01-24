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
typedef  int u32 ;
struct tegra_pmc {TYPE_1__* soc; } ;
struct tegra_io_pad_soc {scalar_t__ voltage; } ;
typedef  enum tegra_io_pad { ____Placeholder_tegra_io_pad } tegra_io_pad ;
struct TYPE_2__ {scalar_t__ has_impl_33v_pwr; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int ENOENT ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  PMC_IMPL_E_33V_PWR ; 
 int /*<<< orphan*/  PMC_PWR_DET_VALUE ; 
 int TEGRA_IO_PAD_VOLTAGE_1V8 ; 
 int TEGRA_IO_PAD_VOLTAGE_3V3 ; 
 scalar_t__ UINT_MAX ; 
 struct tegra_io_pad_soc* FUNC1 (struct tegra_pmc*,int) ; 
 int FUNC2 (struct tegra_pmc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct tegra_pmc *pmc, enum tegra_io_pad id)
{
	const struct tegra_io_pad_soc *pad;
	u32 value;

	pad = FUNC1(pmc, id);
	if (!pad)
		return -ENOENT;

	if (pad->voltage == UINT_MAX)
		return -ENOTSUPP;

	if (pmc->soc->has_impl_33v_pwr)
		value = FUNC2(pmc, PMC_IMPL_E_33V_PWR);
	else
		value = FUNC2(pmc, PMC_PWR_DET_VALUE);

	if ((value & FUNC0(pad->voltage)) == 0)
		return TEGRA_IO_PAD_VOLTAGE_1V8;

	return TEGRA_IO_PAD_VOLTAGE_3V3;
}