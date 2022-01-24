#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_6__ {int base; int /*<<< orphan*/  npwm; int /*<<< orphan*/ * ops; TYPE_2__* dev; } ;
struct spear_pwm_chip {scalar_t__ clk; TYPE_1__ chip; scalar_t__ mmio_base; } ;
struct resource {int dummy; } ;
struct TYPE_7__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  NUM_PWM ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ PWMMCR ; 
 int /*<<< orphan*/  PWMMCR_PWM_ENABLE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*,int) ; 
 scalar_t__ FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_2__*,struct resource*) ; 
 struct spear_pwm_chip* FUNC9 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct device_node*,char*) ; 
 struct resource* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct spear_pwm_chip*) ; 
 int FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  spear_pwm_ops ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct spear_pwm_chip *pc;
	struct resource *r;
	int ret;
	u32 val;

	pc = FUNC9(&pdev->dev, sizeof(*pc), GFP_KERNEL);
	if (!pc)
		return -ENOMEM;

	r = FUNC11(pdev, IORESOURCE_MEM, 0);
	pc->mmio_base = FUNC8(&pdev->dev, r);
	if (FUNC0(pc->mmio_base))
		return FUNC1(pc->mmio_base);

	pc->clk = FUNC7(&pdev->dev, NULL);
	if (FUNC0(pc->clk))
		return FUNC1(pc->clk);

	FUNC12(pdev, pc);

	pc->chip.dev = &pdev->dev;
	pc->chip.ops = &spear_pwm_ops;
	pc->chip.base = -1;
	pc->chip.npwm = NUM_PWM;

	ret = FUNC4(pc->clk);
	if (ret)
		return ret;

	if (FUNC10(np, "st,spear1340-pwm")) {
		ret = FUNC3(pc->clk);
		if (ret) {
			FUNC5(pc->clk);
			return ret;
		}
		/*
		 * Following enables PWM chip, channels would still be
		 * enabled individually through their control register
		 */
		val = FUNC14(pc->mmio_base + PWMMCR);
		val |= PWMMCR_PWM_ENABLE;
		FUNC15(val, pc->mmio_base + PWMMCR);

		FUNC2(pc->clk);
	}

	ret = FUNC13(&pc->chip);
	if (ret < 0) {
		FUNC5(pc->clk);
		FUNC6(&pdev->dev, "pwmchip_add() failed: %d\n", ret);
	}

	return ret;
}