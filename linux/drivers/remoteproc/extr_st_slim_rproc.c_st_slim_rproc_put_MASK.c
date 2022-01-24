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
struct st_slim_rproc {int /*<<< orphan*/  rproc; scalar_t__* clks; } ;

/* Variables and functions */
 int ST_SLIM_MAX_CLK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct st_slim_rproc*) ; 

void FUNC4(struct st_slim_rproc *slim_rproc)
{
	int clk;

	if (!slim_rproc)
		return;

	FUNC3(slim_rproc);

	for (clk = 0; clk < ST_SLIM_MAX_CLK && slim_rproc->clks[clk]; clk++)
		FUNC0(slim_rproc->clks[clk]);

	FUNC1(slim_rproc->rproc);
	FUNC2(slim_rproc->rproc);
}