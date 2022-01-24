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
typedef  int u32 ;
struct imx_pm_domain {scalar_t__ supply; int /*<<< orphan*/  ipg_rate_mhz; int /*<<< orphan*/  regmap; int /*<<< orphan*/  cntr_pdn_bit; scalar_t__ reg_offs; } ;
struct generic_pm_domain {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ GPC_CNTR ; 
 scalar_t__ GPC_PGC_CTRL_OFFS ; 
 scalar_t__ GPC_PGC_PDNSCR_OFFS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 struct imx_pm_domain* FUNC5 (struct generic_pm_domain*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct generic_pm_domain *genpd)
{
	struct imx_pm_domain *pd = FUNC5(genpd);
	int iso, iso2sw;
	u32 val;

	/* Read ISO and ISO2SW power down delays */
	FUNC2(pd->regmap, pd->reg_offs + GPC_PGC_PDNSCR_OFFS, &val);
	iso = val & 0x3f;
	iso2sw = (val >> 8) & 0x3f;

	/* Gate off domain when powered down */
	FUNC3(pd->regmap, pd->reg_offs + GPC_PGC_CTRL_OFFS,
			   0x1, 0x1);

	/* Request GPC to power down domain */
	val = FUNC0(pd->cntr_pdn_bit);
	FUNC3(pd->regmap, GPC_CNTR, val, val);

	/* Wait ISO + ISO2SW IPG clock cycles */
	FUNC6(FUNC1(iso + iso2sw, pd->ipg_rate_mhz));

	if (pd->supply)
		FUNC4(pd->supply);

	return 0;
}