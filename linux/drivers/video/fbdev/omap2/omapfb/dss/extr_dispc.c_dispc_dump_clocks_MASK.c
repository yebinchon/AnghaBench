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
typedef  int /*<<< orphan*/  u32 ;
struct seq_file {int dummy; } ;
typedef  enum omap_dss_clk_source { ____Placeholder_omap_dss_clk_source } omap_dss_clk_source ;

/* Variables and functions */
 int /*<<< orphan*/  DISPC_DIVISOR ; 
 int /*<<< orphan*/  FEAT_CORE_CLK_DIV ; 
 int /*<<< orphan*/  FEAT_MGR_LCD2 ; 
 int /*<<< orphan*/  FEAT_MGR_LCD3 ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  OMAP_DSS_CHANNEL_LCD ; 
 int /*<<< orphan*/  OMAP_DSS_CHANNEL_LCD2 ; 
 int /*<<< orphan*/  OMAP_DSS_CHANNEL_LCD3 ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (int) ; 
 int FUNC7 () ; 
 int FUNC8 (int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct seq_file*,char*,...) ; 

void FUNC11(struct seq_file *s)
{
	int lcd;
	u32 l;
	enum omap_dss_clk_source dispc_clk_src = FUNC7();

	if (FUNC4())
		return;

	FUNC10(s, "- DISPC -\n");

	FUNC10(s, "dispc fclk source = %s (%s)\n",
			FUNC8(dispc_clk_src),
			FUNC6(dispc_clk_src));

	FUNC10(s, "fck\t\t%-16lu\n", FUNC2());

	if (FUNC9(FEAT_CORE_CLK_DIV)) {
		FUNC10(s, "- DISPC-CORE-CLK -\n");
		l = FUNC3(DISPC_DIVISOR);
		lcd = FUNC0(l, 23, 16);

		FUNC10(s, "lck\t\t%-16lulck div\t%u\n",
				(FUNC2()/lcd), lcd);
	}

	FUNC1(s, OMAP_DSS_CHANNEL_LCD);

	if (FUNC9(FEAT_MGR_LCD2))
		FUNC1(s, OMAP_DSS_CHANNEL_LCD2);
	if (FUNC9(FEAT_MGR_LCD3))
		FUNC1(s, OMAP_DSS_CHANNEL_LCD3);

	FUNC5();
}