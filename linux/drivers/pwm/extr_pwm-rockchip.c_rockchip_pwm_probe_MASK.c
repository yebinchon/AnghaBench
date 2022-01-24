#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int base; int npwm; int of_pwm_n_cells; int /*<<< orphan*/  pwms; int /*<<< orphan*/  of_xlate; int /*<<< orphan*/ * ops; TYPE_3__* dev; } ;
struct rockchip_pwm_chip {void* clk; void* pclk; TYPE_2__ chip; TYPE_1__* data; void* base; } ;
struct resource {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct of_device_id {TYPE_1__* data; } ;
struct TYPE_8__ {scalar_t__ supports_polarity; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int FUNC4 (void*) ; 
 int FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,char*,int) ; 
 void* FUNC8 (TYPE_3__*,char*) ; 
 void* FUNC9 (TYPE_3__*,struct resource*) ; 
 struct rockchip_pwm_chip* FUNC10 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,char*,char*) ; 
 struct of_device_id* FUNC12 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  of_pwm_xlate_with_flags ; 
 struct resource* FUNC13 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct rockchip_pwm_chip*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (TYPE_2__*) ; 
 int /*<<< orphan*/  rockchip_pwm_dt_ids ; 
 int /*<<< orphan*/  rockchip_pwm_ops ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev)
{
	const struct of_device_id *id;
	struct rockchip_pwm_chip *pc;
	struct resource *r;
	int ret, count;

	id = FUNC12(rockchip_pwm_dt_ids, &pdev->dev);
	if (!id)
		return -EINVAL;

	pc = FUNC10(&pdev->dev, sizeof(*pc), GFP_KERNEL);
	if (!pc)
		return -ENOMEM;

	r = FUNC13(pdev, IORESOURCE_MEM, 0);
	pc->base = FUNC9(&pdev->dev, r);
	if (FUNC0(pc->base))
		return FUNC1(pc->base);

	pc->clk = FUNC8(&pdev->dev, "pwm");
	if (FUNC0(pc->clk)) {
		pc->clk = FUNC8(&pdev->dev, NULL);
		if (FUNC0(pc->clk)) {
			ret = FUNC1(pc->clk);
			if (ret != -EPROBE_DEFER)
				FUNC7(&pdev->dev, "Can't get bus clk: %d\n",
					ret);
			return ret;
		}
	}

	count = FUNC11(pdev->dev.of_node,
					   "clocks", "#clock-cells");
	if (count == 2)
		pc->pclk = FUNC8(&pdev->dev, "pclk");
	else
		pc->pclk = pc->clk;

	if (FUNC0(pc->pclk)) {
		ret = FUNC1(pc->pclk);
		if (ret != -EPROBE_DEFER)
			FUNC7(&pdev->dev, "Can't get APB clk: %d\n", ret);
		return ret;
	}

	ret = FUNC5(pc->clk);
	if (ret) {
		FUNC7(&pdev->dev, "Can't prepare enable bus clk: %d\n", ret);
		return ret;
	}

	ret = FUNC4(pc->pclk);
	if (ret) {
		FUNC7(&pdev->dev, "Can't prepare APB clk: %d\n", ret);
		goto err_clk;
	}

	FUNC14(pdev, pc);

	pc->data = id->data;
	pc->chip.dev = &pdev->dev;
	pc->chip.ops = &rockchip_pwm_ops;
	pc->chip.base = -1;
	pc->chip.npwm = 1;

	if (pc->data->supports_polarity) {
		pc->chip.of_xlate = of_pwm_xlate_with_flags;
		pc->chip.of_pwm_n_cells = 3;
	}

	ret = FUNC16(&pc->chip);
	if (ret < 0) {
		FUNC6(pc->clk);
		FUNC7(&pdev->dev, "pwmchip_add() failed: %d\n", ret);
		goto err_pclk;
	}

	/* Keep the PWM clk enabled if the PWM appears to be up and running. */
	if (!FUNC15(pc->chip.pwms))
		FUNC2(pc->clk);

	return 0;

err_pclk:
	FUNC6(pc->pclk);
err_clk:
	FUNC3(pc->clk);

	return ret;
}