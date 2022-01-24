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
struct ti_abb_info {int opp_sel; int vset; } ;
struct ti_abb {int ldovbb_override_mask; int ldovbb_vset_mask; int /*<<< orphan*/  ldo_base; } ;
struct device {int dummy; } ;

/* Variables and functions */
#define  TI_ABB_FAST_OPP 129 
#define  TI_ABB_SLOW_OPP 128 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct device *dev, const struct ti_abb *abb,
				  struct ti_abb_info *info)
{
	u32 val;

	val = FUNC1(abb->ldo_base);
	/* clear up previous values */
	val &= ~(abb->ldovbb_override_mask | abb->ldovbb_vset_mask);

	switch (info->opp_sel) {
	case TI_ABB_SLOW_OPP:
	case TI_ABB_FAST_OPP:
		val |= abb->ldovbb_override_mask;
		val |= info->vset << FUNC0(abb->ldovbb_vset_mask);
		break;
	}

	FUNC2(val, abb->ldo_base);
}