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
typedef  int u16 ;
struct tegra_pmx {TYPE_1__* soc; } ;
struct tegra_pingroup {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
typedef  int s8 ;
typedef  int /*<<< orphan*/  s32 ;
typedef  enum tegra_pinconf_param { ____Placeholder_tegra_pinconf_param } tegra_pinconf_param ;
struct TYPE_2__ {struct tegra_pingroup* groups; } ;

/* Variables and functions */
 unsigned long FUNC0 (int,int) ; 
 int FUNC1 (unsigned long) ; 
 struct tegra_pmx* FUNC2 (struct pinctrl_dev*) ; 
 int FUNC3 (struct tegra_pmx*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct tegra_pmx*,struct tegra_pingroup const*,int,int,int*,int /*<<< orphan*/ *,int*,int*) ; 

__attribute__((used)) static int FUNC5(struct pinctrl_dev *pctldev,
				   unsigned group, unsigned long *config)
{
	struct tegra_pmx *pmx = FUNC2(pctldev);
	enum tegra_pinconf_param param = FUNC1(*config);
	u16 arg;
	const struct tegra_pingroup *g;
	int ret;
	s8 bank, bit, width;
	s32 reg;
	u32 val, mask;

	g = &pmx->soc->groups[group];

	ret = FUNC4(pmx, g, param, true, &bank, &reg, &bit,
				&width);
	if (ret < 0)
		return ret;

	val = FUNC3(pmx, bank, reg);
	mask = (1 << width) - 1;
	arg = (val >> bit) & mask;

	*config = FUNC0(param, arg);

	return 0;
}