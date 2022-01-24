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
typedef  int /*<<< orphan*/  u32 ;
struct pinctrl_dev {int dummy; } ;
struct owl_pingroup {int dummy; } ;
struct owl_pinctrl {int /*<<< orphan*/  lock; TYPE_1__* soc; } ;
struct TYPE_2__ {struct owl_pingroup* groups; } ;

/* Variables and functions */
 int FUNC0 (struct owl_pingroup const*,unsigned int,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct owl_pingroup const*,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct owl_pinctrl*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 unsigned int FUNC4 (unsigned long) ; 
 struct owl_pinctrl* FUNC5 (struct pinctrl_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct pinctrl_dev *pctrldev,
				unsigned int group,
				unsigned long *configs,
				unsigned int num_configs)
{
	const struct owl_pingroup *g;
	struct owl_pinctrl *pctrl = FUNC5(pctrldev);
	unsigned long flags;
	unsigned int param;
	u32 reg, bit, width, arg;
	int ret, i;

	g = &pctrl->soc->groups[group];

	for (i = 0; i < num_configs; i++) {
		param = FUNC4(configs[i]);
		arg = FUNC3(configs[i]);

		ret = FUNC1(g, param, &reg, &bit, &width);
		if (ret)
			return ret;

		ret = FUNC0(g, param, &arg);
		if (ret)
			return ret;

		/* Update register */
		FUNC6(&pctrl->lock, flags);

		FUNC2(pctrl, reg, arg, bit, width);

		FUNC7(&pctrl->lock, flags);
	}

	return 0;
}