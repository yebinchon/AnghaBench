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
struct clk {unsigned long rate; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_rate ) (struct clk*,unsigned long) ;unsigned long (* recalc ) (struct clk*) ;} ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  clock_lock ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct clk*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC4 (struct clk*,unsigned long) ; 
 unsigned long FUNC5 (struct clk*) ; 

int FUNC6(struct clk *clk, unsigned long rate)
{
	int ret = -EOPNOTSUPP;
	unsigned long flags;

	if (!clk)
		return 0;

	FUNC2(&clock_lock, flags);

	if (FUNC0(clk->ops && clk->ops->set_rate)) {
		ret = clk->ops->set_rate(clk, rate);
		if (ret != 0)
			goto out_unlock;
	} else {
		clk->rate = rate;
		ret = 0;
	}

	if (clk->ops && clk->ops->recalc)
		clk->rate = clk->ops->recalc(clk);

	FUNC1(clk);

out_unlock:
	FUNC3(&clock_lock, flags);

	return ret;
}