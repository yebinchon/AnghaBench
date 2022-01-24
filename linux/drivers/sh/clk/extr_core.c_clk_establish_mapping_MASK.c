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
struct clk_mapping {scalar_t__ phys; scalar_t__ base; int /*<<< orphan*/  ref; int /*<<< orphan*/  len; } ;
struct clk {struct clk_mapping* mapping; scalar_t__ enable_reg; scalar_t__ mapped_reg; int /*<<< orphan*/  parent; } ;
typedef  scalar_t__ phys_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENXIO ; 
 struct clk_mapping dummy_mapping ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct clk* FUNC4 (struct clk*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct clk *clk)
{
	struct clk_mapping *mapping = clk->mapping;

	/*
	 * Propagate mappings.
	 */
	if (!mapping) {
		struct clk *clkp;

		/*
		 * dummy mapping for root clocks with no specified ranges
		 */
		if (!clk->parent) {
			clk->mapping = &dummy_mapping;
			goto out;
		}

		/*
		 * If we're on a child clock and it provides no mapping of its
		 * own, inherit the mapping from its root clock.
		 */
		clkp = FUNC4(clk);
		mapping = clkp->mapping;
		FUNC0(!mapping);
	}

	/*
	 * Establish initial mapping.
	 */
	if (!mapping->base && mapping->phys) {
		FUNC3(&mapping->ref);

		mapping->base = FUNC1(mapping->phys, mapping->len);
		if (FUNC5(!mapping->base))
			return -ENXIO;
	} else if (mapping->base) {
		/*
		 * Bump the refcount for an existing mapping
		 */
		FUNC2(&mapping->ref);
	}

	clk->mapping = mapping;
out:
	clk->mapped_reg = clk->mapping->base;
	clk->mapped_reg += (phys_addr_t)clk->enable_reg - clk->mapping->phys;
	return 0;
}