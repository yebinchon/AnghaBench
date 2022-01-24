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
struct owl_pinctrl {TYPE_1__* soc; } ;
struct TYPE_2__ {struct owl_pingroup* groups; } ;

/* Variables and functions */
 int FUNC0 (struct owl_pingroup const*,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct owl_pingroup const*,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct owl_pinctrl*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (unsigned long) ; 
 struct owl_pinctrl* FUNC5 (struct pinctrl_dev*) ; 

__attribute__((used)) static int FUNC6(struct pinctrl_dev *pctrldev,
				unsigned int group,
				unsigned long *config)
{
	const struct owl_pingroup *g;
	struct owl_pinctrl *pctrl = FUNC5(pctrldev);
	unsigned int param = FUNC4(*config);
	u32 reg, bit, width, arg;
	int ret;

	g = &pctrl->soc->groups[group];

	ret = FUNC0(g, param, &reg, &bit, &width);
	if (ret)
		return ret;

	arg = FUNC2(pctrl, reg, bit, width);

	ret = FUNC1(g, param, &arg);
	if (ret)
		return ret;

	*config = FUNC3(param, arg);

	return ret;

}