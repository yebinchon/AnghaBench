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
struct tegra_powergate {int /*<<< orphan*/  id; struct tegra_bpmp* bpmp; } ;
struct tegra_bpmp {int dummy; } ;
struct generic_pm_domain {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PG_STATE_OFF ; 
 int FUNC0 (struct tegra_bpmp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tegra_powergate* FUNC1 (struct generic_pm_domain*) ; 

__attribute__((used)) static int FUNC2(struct generic_pm_domain *domain)
{
	struct tegra_powergate *powergate = FUNC1(domain);
	struct tegra_bpmp *bpmp = powergate->bpmp;

	return FUNC0(bpmp, powergate->id,
					      PG_STATE_OFF);
}