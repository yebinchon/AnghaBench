#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct qcom_adsp {int num_clks; TYPE_1__* clks; int /*<<< orphan*/  dev; int /*<<< orphan*/  xo; } ;
struct TYPE_3__ {char const* id; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct qcom_adsp *adsp, const char **clk_ids)
{
	int num_clks = 0;
	int i, ret;

	adsp->xo = FUNC4(adsp->dev, "xo");
	if (FUNC0(adsp->xo)) {
		ret = FUNC1(adsp->xo);
		if (ret != -EPROBE_DEFER)
			FUNC2(adsp->dev, "failed to get xo clock");
		return ret;
	}

	for (i = 0; clk_ids[i]; i++)
		num_clks++;

	adsp->num_clks = num_clks;
	adsp->clks = FUNC5(adsp->dev, adsp->num_clks,
				sizeof(*adsp->clks), GFP_KERNEL);
	if (!adsp->clks)
		return -ENOMEM;

	for (i = 0; i < adsp->num_clks; i++)
		adsp->clks[i].id = clk_ids[i];

	return FUNC3(adsp->dev, adsp->num_clks, adsp->clks);
}