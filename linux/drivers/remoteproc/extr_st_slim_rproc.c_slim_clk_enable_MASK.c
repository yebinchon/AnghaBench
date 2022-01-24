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
struct st_slim_rproc {scalar_t__* clks; } ;

/* Variables and functions */
 int ST_SLIM_MAX_CLK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct st_slim_rproc *slim_rproc)
{
	int clk, ret;

	for (clk = 0; clk < ST_SLIM_MAX_CLK && slim_rproc->clks[clk]; clk++) {
		ret = FUNC1(slim_rproc->clks[clk]);
		if (ret)
			goto err_disable_clks;
	}

	return 0;

err_disable_clks:
	while (--clk >= 0)
		FUNC0(slim_rproc->clks[clk]);

	return ret;
}