#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ prev; scalar_t__ next; } ;
struct clk {TYPE_2__* ops; TYPE_3__ node; TYPE_3__ sibling; TYPE_1__* parent; scalar_t__ usecount; int /*<<< orphan*/  children; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* init ) (struct clk*) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  children; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct clk*) ; 
 int FUNC2 (struct clk*) ; 
 int /*<<< orphan*/  clock_list ; 
 int /*<<< orphan*/  clock_list_sem ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  root_clks ; 
 int /*<<< orphan*/  FUNC6 (struct clk*) ; 
 scalar_t__ FUNC7 (int) ; 

int FUNC8(struct clk *clk)
{
	int ret;

	if (FUNC1(clk))
		return -EINVAL;

	/*
	 * trap out already registered clocks
	 */
	if (clk->node.next || clk->node.prev)
		return 0;

	FUNC4(&clock_list_sem);

	FUNC0(&clk->children);
	clk->usecount = 0;

	ret = FUNC2(clk);
	if (FUNC7(ret))
		goto out_unlock;

	if (clk->parent)
		FUNC3(&clk->sibling, &clk->parent->children);
	else
		FUNC3(&clk->sibling, &root_clks);

	FUNC3(&clk->node, &clock_list);

#ifdef CONFIG_SH_CLK_CPG_LEGACY
	if (clk->ops && clk->ops->init)
		clk->ops->init(clk);
#endif

out_unlock:
	FUNC5(&clock_list_sem);

	return ret;
}