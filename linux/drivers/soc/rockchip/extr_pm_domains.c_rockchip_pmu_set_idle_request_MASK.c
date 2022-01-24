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
struct generic_pm_domain {int /*<<< orphan*/  name; } ;
struct rockchip_pmu {int /*<<< orphan*/  dev; struct rockchip_domain_info* info; int /*<<< orphan*/  regmap; struct rockchip_pmu* pmu; struct generic_pm_domain genpd; } ;
struct rockchip_pm_domain {int /*<<< orphan*/  dev; struct rockchip_domain_info* info; int /*<<< orphan*/  regmap; struct rockchip_pm_domain* pmu; struct generic_pm_domain genpd; } ;
struct rockchip_domain_info {int req_mask; int req_w_mask; unsigned int ack_mask; int /*<<< orphan*/  req_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct rockchip_pmu*,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rockchip_pmu_domain_is_idle ; 
 int /*<<< orphan*/  rockchip_pmu_read_ack ; 
 int /*<<< orphan*/  sy ; 

__attribute__((used)) static int FUNC5(struct rockchip_pm_domain *pd,
					 bool idle)
{
	const struct rockchip_domain_info *pd_info = pd->info;
	struct generic_pm_domain *genpd = &pd->genpd;
	struct rockchip_pmu *pmu = pd->pmu;
	unsigned int target_ack;
	unsigned int val;
	bool is_idle;
	int ret;

	if (pd_info->req_mask == 0)
		return 0;
	else if (pd_info->req_w_mask)
		FUNC4(pmu->regmap, pmu->info->req_offset,
			     idle ? (pd_info->req_mask | pd_info->req_w_mask) :
			     pd_info->req_w_mask);
	else
		FUNC3(pmu->regmap, pmu->info->req_offset,
				   pd_info->req_mask, idle ? -1U : 0);

	FUNC1(sy);

	/* Wait util idle_ack = 1 */
	target_ack = idle ? pd_info->ack_mask : 0;
	ret = FUNC2(rockchip_pmu_read_ack, pmu, val,
					(val & pd_info->ack_mask) == target_ack,
					0, 10000);
	if (ret) {
		FUNC0(pmu->dev,
			"failed to get ack on domain '%s', val=0x%x\n",
			genpd->name, val);
		return ret;
	}

	ret = FUNC2(rockchip_pmu_domain_is_idle, pd,
					is_idle, is_idle == idle, 0, 10000);
	if (ret) {
		FUNC0(pmu->dev,
			"failed to set idle on domain '%s', val=%d\n",
			genpd->name, is_idle);
		return ret;
	}

	return 0;
}