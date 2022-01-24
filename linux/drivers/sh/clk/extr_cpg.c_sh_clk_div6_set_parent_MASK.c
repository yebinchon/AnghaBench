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
struct clk_div_mult_table {int /*<<< orphan*/  nr_divisors; } ;
struct clk {int parent_num; int src_width; int src_shift; int /*<<< orphan*/  freq_table; struct clk** parent_table; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct clk*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct clk_div_mult_table*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct clk*,struct clk*) ; 
 struct clk_div_mult_table* FUNC2 (struct clk*) ; 
 int FUNC3 (struct clk*) ; 
 int /*<<< orphan*/  FUNC4 (int,struct clk*) ; 

__attribute__((used)) static int FUNC5(struct clk *clk, struct clk *parent)
{
	struct clk_div_mult_table *table = FUNC2(clk);
	u32 value;
	int ret, i;

	if (!clk->parent_table || !clk->parent_num)
		return -EINVAL;

	/* Search the parent */
	for (i = 0; i < clk->parent_num; i++)
		if (clk->parent_table[i] == parent)
			break;

	if (i == clk->parent_num)
		return -ENODEV;

	ret = FUNC1(clk, parent);
	if (ret < 0)
		return ret;

	value = FUNC3(clk) &
		~(((1 << clk->src_width) - 1) << clk->src_shift);

	FUNC4(value | (i << clk->src_shift), clk);

	/* Rebuild the frequency table */
	FUNC0(clk, clk->freq_table, table->nr_divisors,
			     table, NULL);

	return 0;
}