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
struct geni_wrapper {int /*<<< orphan*/  ahb_clks; } ;
struct geni_se {int /*<<< orphan*/  clk; struct geni_wrapper* wrapper; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct geni_se *se)
{
	int ret;
	struct geni_wrapper *wrapper = se->wrapper;

	ret = FUNC2(FUNC0(wrapper->ahb_clks),
						wrapper->ahb_clks);
	if (ret)
		return ret;

	ret = FUNC3(se->clk);
	if (ret)
		FUNC1(FUNC0(wrapper->ahb_clks),
							wrapper->ahb_clks);
	return ret;
}