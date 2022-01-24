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
struct pinctrl_dev {int dummy; } ;
struct mrfld_pinctrl {int /*<<< orphan*/  lock; struct intel_pingroup* groups; } ;
struct intel_pingroup {int mode; unsigned int npins; int /*<<< orphan*/ * pins; } ;

/* Variables and functions */
 int BUFCFG_PINMODE_MASK ; 
 int BUFCFG_PINMODE_SHIFT ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct mrfld_pinctrl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mrfld_pinctrl*,int /*<<< orphan*/ ,int,int) ; 
 struct mrfld_pinctrl* FUNC2 (struct pinctrl_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct pinctrl_dev *pctldev,
				unsigned int function,
				unsigned int group)
{
	struct mrfld_pinctrl *mp = FUNC2(pctldev);
	const struct intel_pingroup *grp = &mp->groups[group];
	u32 bits = grp->mode << BUFCFG_PINMODE_SHIFT;
	u32 mask = BUFCFG_PINMODE_MASK;
	unsigned long flags;
	unsigned int i;

	/*
	 * All pins in the groups needs to be accessible and writable
	 * before we can enable the mux for this group.
	 */
	for (i = 0; i < grp->npins; i++) {
		if (!FUNC0(mp, grp->pins[i]))
			return -EBUSY;
	}

	/* Now enable the mux setting for each pin in the group */
	FUNC3(&mp->lock, flags);
	for (i = 0; i < grp->npins; i++)
		FUNC1(mp, grp->pins[i], bits, mask);
	FUNC4(&mp->lock, flags);

	return 0;
}