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
typedef  size_t u8 ;
typedef  size_t u32 ;
struct spear_pmx {int dummy; } ;
struct spear_muxreg {size_t mask; size_t val; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 size_t FUNC0 (struct spear_pmx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct spear_pmx*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct spear_pmx *pmx,
		struct spear_muxreg *muxregs, u8 count, bool enable)
{
	struct spear_muxreg *muxreg;
	u32 val, temp, j;

	for (j = 0; j < count; j++) {
		muxreg = &muxregs[j];

		val = FUNC0(pmx, muxreg->reg);
		val &= ~muxreg->mask;

		if (enable)
			temp = muxreg->val;
		else
			temp = ~muxreg->val;

		val |= muxreg->mask & temp;
		FUNC1(pmx, val, muxreg->reg);
	}
}