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
struct device {int dummy; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,char*) ; 
 struct clk* FUNC3 (struct device*,char*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct clk **clks,
		char **clk_names)
{
	int i;

	if (!clk_names)
		return 0;

	for (i = 0; clk_names[i]; i++) {
		clks[i] = FUNC3(dev, clk_names[i]);
		if (FUNC0(clks[i])) {
			int rc = FUNC1(clks[i]);

			if (rc != -EPROBE_DEFER)
				FUNC2(dev, "Failed to get %s clock\n",
					clk_names[i]);
			return rc;
		}
	}

	return i;
}