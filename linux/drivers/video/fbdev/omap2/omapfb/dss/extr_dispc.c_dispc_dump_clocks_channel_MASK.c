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
typedef  enum omap_dss_clk_source { ____Placeholder_omap_dss_clk_source } omap_dss_clk_source ;
typedef  enum omap_channel { ____Placeholder_omap_channel } omap_channel ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int) ; 
 TYPE_1__* mgr_desc ; 
 int /*<<< orphan*/  FUNC6 (struct seq_file*,char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void FUNC7(struct seq_file *s, enum omap_channel channel)
{
	int lcd, pcd;
	enum omap_dss_clk_source lcd_clk_src;

	FUNC6(s, "- %s -\n", mgr_desc[channel].name);

	lcd_clk_src = FUNC5(channel);

	FUNC6(s, "%s clk source = %s (%s)\n", mgr_desc[channel].name,
		FUNC4(lcd_clk_src),
		FUNC3(lcd_clk_src));

	FUNC0(channel, &lcd, &pcd);

	FUNC6(s, "lck\t\t%-16lulck div\t%u\n",
		FUNC1(channel), lcd);
	FUNC6(s, "pck\t\t%-16lupck div\t%u\n",
		FUNC2(channel), pcd);
}