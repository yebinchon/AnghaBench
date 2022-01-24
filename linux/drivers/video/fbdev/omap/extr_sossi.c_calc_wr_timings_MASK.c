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
struct extif_timings {int clk_div; int* tim; int /*<<< orphan*/  we_cycle_time; int /*<<< orphan*/  we_off_time; int /*<<< orphan*/  we_on_time; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(struct extif_timings *t)
{
	u32 tw0, tw1;
	int weon, weoff, wecyc;
	int div = t->clk_div;

	/*
	 * Make sure that after conversion it still holds that:
	 * weoff > weon, wecyc >= weoff
	 */
	weon = FUNC0(t->we_on_time, div);
	/* weon will be exactly one sossi tick */
	if (weon > 1)
		return -1;

	weoff = FUNC0(t->we_off_time, div);
	if (weoff <= weon)
		weoff = weon + 1;
	tw0 = weoff - weon;
	if (tw0 > 0x10)
		return -1;

	wecyc = FUNC0(t->we_cycle_time, div);
	if (wecyc <= weoff)
		wecyc = weoff + 1;

	tw1 = wecyc - tw0;
	/* values less then 3 result in the SOSSI block resetting itself */
	if (tw1 < 3)
		tw1 = 3;
	if (tw1 > 0x40)
		return -1;

	t->tim[2] = tw0 - 1;
	t->tim[3] = tw1 - 1;

	return 0;
}