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
 struct clk* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct clk*) ; 
 scalar_t__ clk_disable_unprepare ; 
 int FUNC2 (struct clk*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,void (*) (void*),struct clk*) ; 
 struct clk* FUNC5 (struct device*,char const*) ; 

__attribute__((used)) static inline struct clk *FUNC6(struct device *dev,
						 const char *id)
{
	struct clk *clk = NULL;
	int ret;

	clk = FUNC5(dev, id);
	if (FUNC1(clk))
		return clk;

	ret = FUNC2(clk);
	if (ret) {
		FUNC3(dev, "couldn't enable clk\n");
		return FUNC0(ret);
	}

	FUNC4(dev,
			(void(*)(void *))clk_disable_unprepare,
			clk);

	return clk;
}