#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_9__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct resource {int dummy; } ;
struct TYPE_11__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/  notifier_call; } ;
struct TYPE_10__ {scalar_t__* clks; int /*<<< orphan*/  clk_num; } ;
struct clk_wzrd {scalar_t__ base; int speed_grade; scalar_t__ clk_in1; scalar_t__ axi_clk; scalar_t__* clks_internal; scalar_t__* clkout; TYPE_9__ nb; TYPE_1__ clk_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EPROBE_DEFER ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 unsigned long WZRD_ACLK_MAX_FREQ ; 
 int WZRD_CLKFBOUT_FRAC_EN ; 
 int WZRD_CLKFBOUT_MULT_MASK ; 
 int WZRD_CLKFBOUT_MULT_SHIFT ; 
 int WZRD_CLKOUT0_FRAC_EN ; 
 int WZRD_CLKOUT_DIVIDE_MASK ; 
 int WZRD_CLKOUT_DIVIDE_SHIFT ; 
 scalar_t__ FUNC4 (int) ; 
 int WZRD_DIVCLK_DIVIDE_MASK ; 
 int WZRD_DIVCLK_DIVIDE_SHIFT ; 
 int WZRD_NUM_OUTPUTS ; 
 char const* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 unsigned long FUNC7 (scalar_t__) ; 
 int FUNC8 (scalar_t__,TYPE_9__*) ; 
 int FUNC9 (scalar_t__) ; 
 void* FUNC10 (TYPE_2__*,char const*,char const*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  clk_wzrd_clk_notifier ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,char*,...) ; 
 void* FUNC15 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC16 (TYPE_2__*,struct resource*) ; 
 struct clk_wzrd* FUNC17 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 char* FUNC18 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char const*) ; 
 int /*<<< orphan*/  FUNC20 (struct device_node*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  of_clk_src_onecell_get ; 
 scalar_t__ FUNC21 (struct device_node*,char*,int,char const**) ; 
 int FUNC22 (struct device_node*,char*,int*) ; 
 struct resource* FUNC23 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct platform_device*,struct clk_wzrd*) ; 
 int FUNC25 (scalar_t__) ; 
 size_t wzrd_clk_mul ; 
 size_t wzrd_clk_mul_div ; 

__attribute__((used)) static int FUNC26(struct platform_device *pdev)
{
	int i, ret;
	u32 reg;
	unsigned long rate;
	const char *clk_name;
	struct clk_wzrd *clk_wzrd;
	struct resource *mem;
	struct device_node *np = pdev->dev.of_node;

	clk_wzrd = FUNC17(&pdev->dev, sizeof(*clk_wzrd), GFP_KERNEL);
	if (!clk_wzrd)
		return -ENOMEM;
	FUNC24(pdev, clk_wzrd);

	mem = FUNC23(pdev, IORESOURCE_MEM, 0);
	clk_wzrd->base = FUNC16(&pdev->dev, mem);
	if (FUNC2(clk_wzrd->base))
		return FUNC3(clk_wzrd->base);

	ret = FUNC22(np, "speed-grade", &clk_wzrd->speed_grade);
	if (!ret) {
		if (clk_wzrd->speed_grade < 1 || clk_wzrd->speed_grade > 3) {
			FUNC14(&pdev->dev, "invalid speed grade '%d'\n",
				 clk_wzrd->speed_grade);
			clk_wzrd->speed_grade = 0;
		}
	}

	clk_wzrd->clk_in1 = FUNC15(&pdev->dev, "clk_in1");
	if (FUNC2(clk_wzrd->clk_in1)) {
		if (clk_wzrd->clk_in1 != FUNC1(-EPROBE_DEFER))
			FUNC12(&pdev->dev, "clk_in1 not found\n");
		return FUNC3(clk_wzrd->clk_in1);
	}

	clk_wzrd->axi_clk = FUNC15(&pdev->dev, "s_axi_aclk");
	if (FUNC2(clk_wzrd->axi_clk)) {
		if (clk_wzrd->axi_clk != FUNC1(-EPROBE_DEFER))
			FUNC12(&pdev->dev, "s_axi_aclk not found\n");
		return FUNC3(clk_wzrd->axi_clk);
	}
	ret = FUNC9(clk_wzrd->axi_clk);
	if (ret) {
		FUNC12(&pdev->dev, "enabling s_axi_aclk failed\n");
		return ret;
	}
	rate = FUNC7(clk_wzrd->axi_clk);
	if (rate > WZRD_ACLK_MAX_FREQ) {
		FUNC12(&pdev->dev, "s_axi_aclk frequency (%lu) too high\n",
			rate);
		ret = -EINVAL;
		goto err_disable_clk;
	}

	/* we don't support fractional div/mul yet */
	reg = FUNC25(clk_wzrd->base + FUNC4(0)) &
		    WZRD_CLKFBOUT_FRAC_EN;
	reg |= FUNC25(clk_wzrd->base + FUNC4(2)) &
		     WZRD_CLKOUT0_FRAC_EN;
	if (reg)
		FUNC14(&pdev->dev, "fractional div/mul not supported\n");

	/* register multiplier */
	reg = (FUNC25(clk_wzrd->base + FUNC4(0)) &
		     WZRD_CLKFBOUT_MULT_MASK) >> WZRD_CLKFBOUT_MULT_SHIFT;
	clk_name = FUNC18(GFP_KERNEL, "%s_mul", FUNC13(&pdev->dev));
	if (!clk_name) {
		ret = -ENOMEM;
		goto err_disable_clk;
	}
	clk_wzrd->clks_internal[wzrd_clk_mul] = FUNC10
			(&pdev->dev, clk_name,
			 FUNC5(clk_wzrd->clk_in1),
			 0, reg, 1);
	FUNC19(clk_name);
	if (FUNC2(clk_wzrd->clks_internal[wzrd_clk_mul])) {
		FUNC12(&pdev->dev, "unable to register fixed-factor clock\n");
		ret = FUNC3(clk_wzrd->clks_internal[wzrd_clk_mul]);
		goto err_disable_clk;
	}

	/* register div */
	reg = (FUNC25(clk_wzrd->base + FUNC4(0)) &
			WZRD_DIVCLK_DIVIDE_MASK) >> WZRD_DIVCLK_DIVIDE_SHIFT;
	clk_name = FUNC18(GFP_KERNEL, "%s_mul_div", FUNC13(&pdev->dev));
	if (!clk_name) {
		ret = -ENOMEM;
		goto err_rm_int_clk;
	}

	clk_wzrd->clks_internal[wzrd_clk_mul_div] = FUNC10
			(&pdev->dev, clk_name,
			 FUNC5(clk_wzrd->clks_internal[wzrd_clk_mul]),
			 0, 1, reg);
	if (FUNC2(clk_wzrd->clks_internal[wzrd_clk_mul_div])) {
		FUNC12(&pdev->dev, "unable to register divider clock\n");
		ret = FUNC3(clk_wzrd->clks_internal[wzrd_clk_mul_div]);
		goto err_rm_int_clk;
	}

	/* register div per output */
	for (i = WZRD_NUM_OUTPUTS - 1; i >= 0 ; i--) {
		const char *clkout_name;

		if (FUNC21(np, "clock-output-names", i,
						  &clkout_name)) {
			FUNC12(&pdev->dev,
				"clock output name not specified\n");
			ret = -EINVAL;
			goto err_rm_int_clks;
		}
		reg = FUNC25(clk_wzrd->base + FUNC4(2) + i * 12);
		reg &= WZRD_CLKOUT_DIVIDE_MASK;
		reg >>= WZRD_CLKOUT_DIVIDE_SHIFT;
		clk_wzrd->clkout[i] = FUNC10
			(&pdev->dev, clkout_name, clk_name, 0, 1, reg);
		if (FUNC2(clk_wzrd->clkout[i])) {
			int j;

			for (j = i + 1; j < WZRD_NUM_OUTPUTS; j++)
				FUNC11(clk_wzrd->clkout[j]);
			FUNC12(&pdev->dev,
				"unable to register divider clock\n");
			ret = FUNC3(clk_wzrd->clkout[i]);
			goto err_rm_int_clks;
		}
	}

	FUNC19(clk_name);

	clk_wzrd->clk_data.clks = clk_wzrd->clkout;
	clk_wzrd->clk_data.clk_num = FUNC0(clk_wzrd->clkout);
	FUNC20(np, of_clk_src_onecell_get, &clk_wzrd->clk_data);

	if (clk_wzrd->speed_grade) {
		clk_wzrd->nb.notifier_call = clk_wzrd_clk_notifier;

		ret = FUNC8(clk_wzrd->clk_in1,
					    &clk_wzrd->nb);
		if (ret)
			FUNC14(&pdev->dev,
				 "unable to register clock notifier\n");

		ret = FUNC8(clk_wzrd->axi_clk, &clk_wzrd->nb);
		if (ret)
			FUNC14(&pdev->dev,
				 "unable to register clock notifier\n");
	}

	return 0;

err_rm_int_clks:
	FUNC11(clk_wzrd->clks_internal[1]);
err_rm_int_clk:
	FUNC19(clk_name);
	FUNC11(clk_wzrd->clks_internal[0]);
err_disable_clk:
	FUNC6(clk_wzrd->axi_clk);

	return ret;
}