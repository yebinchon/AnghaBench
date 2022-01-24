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
struct seq_file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dss_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  OMAP_DSS_CLK_SRC_FCK ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ dss ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char*,...) ; 

void FUNC6(struct seq_file *s)
{
	const char *fclk_name, *fclk_real_name;
	unsigned long fclk_rate;

	if (FUNC3())
		return;

	FUNC5(s, "- DSS -\n");

	fclk_name = FUNC2(OMAP_DSS_CLK_SRC_FCK);
	fclk_real_name = FUNC1(OMAP_DSS_CLK_SRC_FCK);
	fclk_rate = FUNC0(dss.dss_clk);

	FUNC5(s, "%s (%s) = %lu\n",
			fclk_name, fclk_real_name,
			fclk_rate);

	FUNC4();
}