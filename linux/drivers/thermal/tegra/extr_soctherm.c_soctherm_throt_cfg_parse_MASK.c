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
struct tegra_soctherm {TYPE_1__* soc; } ;
struct soctherm_throt_cfg {int priority; int cpu_throt_level; int cpu_throt_depth; int gpu_throt_level; int /*<<< orphan*/  name; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ use_ccroc; } ;

/* Variables and functions */
 int EINVAL ; 
 int TEGRA_SOCTHERM_THROT_LEVEL_HIGH ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct tegra_soctherm* FUNC1 (struct device*) ; 
 int FUNC2 (struct device_node*,char*,int*) ; 

__attribute__((used)) static int FUNC3(struct device *dev,
				    struct device_node *np,
				    struct soctherm_throt_cfg *stc)
{
	struct tegra_soctherm *ts = FUNC1(dev);
	int ret;
	u32 val;

	ret = FUNC2(np, "nvidia,priority", &val);
	if (ret) {
		FUNC0(dev, "throttle-cfg: %s: invalid priority\n", stc->name);
		return -EINVAL;
	}
	stc->priority = val;

	ret = FUNC2(np, ts->soc->use_ccroc ?
				   "nvidia,cpu-throt-level" :
				   "nvidia,cpu-throt-percent", &val);
	if (!ret) {
		if (ts->soc->use_ccroc &&
		    val <= TEGRA_SOCTHERM_THROT_LEVEL_HIGH)
			stc->cpu_throt_level = val;
		else if (!ts->soc->use_ccroc && val <= 100)
			stc->cpu_throt_depth = val;
		else
			goto err;
	} else {
		goto err;
	}

	ret = FUNC2(np, "nvidia,gpu-throt-level", &val);
	if (!ret && val <= TEGRA_SOCTHERM_THROT_LEVEL_HIGH)
		stc->gpu_throt_level = val;
	else
		goto err;

	return 0;

err:
	FUNC0(dev, "throttle-cfg: %s: no throt prop or invalid prop\n",
		stc->name);
	return -EINVAL;
}