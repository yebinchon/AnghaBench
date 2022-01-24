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
 int ENOENT ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,char const*,int) ; 
 struct clk* FUNC3 (struct device*,char const*) ; 

__attribute__((used)) static int FUNC4(struct device *dev,
		const char *name, struct clk **clk_out, bool optional)
{
	struct clk *clk;
	int err = 0;

	clk = FUNC3(dev, name);
	if (!FUNC0(clk)) {
		*clk_out = clk;
		return 0;
	}

	err = FUNC1(clk);

	if (optional && err == -ENOENT) {
		*clk_out = NULL;
		return 0;
	}

	if (err != -EPROBE_DEFER)
		FUNC2(dev, "failed to get %s err %d\n", name, err);

	return err;
}