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
struct pinctrl_dev {int dummy; } ;
struct msm_pingroup {int mux_bit; int nfuncs; unsigned int* funcs; } ;
struct msm_pinctrl {int /*<<< orphan*/  lock; TYPE_1__* soc; } ;
struct TYPE_2__ {struct msm_pingroup* groups; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (scalar_t__,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct msm_pinctrl*,struct msm_pingroup const*) ; 
 int /*<<< orphan*/  FUNC3 (int,struct msm_pinctrl*,struct msm_pingroup const*) ; 
 scalar_t__ FUNC4 (int) ; 
 struct msm_pinctrl* FUNC5 (struct pinctrl_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct pinctrl_dev *pctldev,
			      unsigned function,
			      unsigned group)
{
	struct msm_pinctrl *pctrl = FUNC5(pctldev);
	const struct msm_pingroup *g;
	unsigned long flags;
	u32 val, mask;
	int i;

	g = &pctrl->soc->groups[group];
	mask = FUNC0(g->mux_bit + FUNC4(g->nfuncs) - 1, g->mux_bit);

	for (i = 0; i < g->nfuncs; i++) {
		if (g->funcs[i] == function)
			break;
	}

	if (FUNC1(i == g->nfuncs))
		return -EINVAL;

	FUNC6(&pctrl->lock, flags);

	val = FUNC2(pctrl, g);
	val &= ~mask;
	val |= i << g->mux_bit;
	FUNC3(val, pctrl, g);

	FUNC7(&pctrl->lock, flags);

	return 0;
}