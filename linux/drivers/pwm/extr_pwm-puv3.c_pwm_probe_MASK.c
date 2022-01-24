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
struct resource {int dummy; } ;
struct TYPE_2__ {int base; int npwm; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * dev; } ;
struct puv3_pwm_chip {TYPE_1__ chip; int /*<<< orphan*/  base; int /*<<< orphan*/  clk; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct resource*) ; 
 struct puv3_pwm_chip* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct resource* FUNC6 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct puv3_pwm_chip*) ; 
 int /*<<< orphan*/  puv3_pwm_ops ; 
 int FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct puv3_pwm_chip *puv3;
	struct resource *r;
	int ret;

	puv3 = FUNC5(&pdev->dev, sizeof(*puv3), GFP_KERNEL);
	if (!puv3)
		return -ENOMEM;

	puv3->clk = FUNC3(&pdev->dev, "OST_CLK");
	if (FUNC0(puv3->clk))
		return FUNC1(puv3->clk);

	r = FUNC6(pdev, IORESOURCE_MEM, 0);
	puv3->base = FUNC4(&pdev->dev, r);
	if (FUNC0(puv3->base))
		return FUNC1(puv3->base);

	puv3->chip.dev = &pdev->dev;
	puv3->chip.ops = &puv3_pwm_ops;
	puv3->chip.base = -1;
	puv3->chip.npwm = 1;

	ret = FUNC8(&puv3->chip);
	if (ret < 0) {
		FUNC2(&pdev->dev, "pwmchip_add() failed: %d\n", ret);
		return ret;
	}

	FUNC7(pdev, puv3);
	return 0;
}