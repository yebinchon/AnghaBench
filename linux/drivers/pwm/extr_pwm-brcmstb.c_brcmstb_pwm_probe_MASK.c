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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int base; int npwm; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * dev; } ;
struct brcmstb_pwm {int /*<<< orphan*/  clk; TYPE_1__ chip; int /*<<< orphan*/  base; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  brcmstb_pwm_ops ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct resource*) ; 
 struct brcmstb_pwm* FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct brcmstb_pwm*) ; 
 int FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct brcmstb_pwm *p;
	struct resource *res;
	int ret;

	p = FUNC7(&pdev->dev, sizeof(*p), GFP_KERNEL);
	if (!p)
		return -ENOMEM;

	FUNC11(&p->lock);

	p->clk = FUNC5(&pdev->dev, NULL);
	if (FUNC0(p->clk)) {
		FUNC4(&pdev->dev, "failed to obtain clock\n");
		return FUNC1(p->clk);
	}

	ret = FUNC3(p->clk);
	if (ret < 0) {
		FUNC4(&pdev->dev, "failed to enable clock: %d\n", ret);
		return ret;
	}

	FUNC9(pdev, p);

	p->chip.dev = &pdev->dev;
	p->chip.ops = &brcmstb_pwm_ops;
	p->chip.base = -1;
	p->chip.npwm = 2;

	res = FUNC8(pdev, IORESOURCE_MEM, 0);
	p->base = FUNC6(&pdev->dev, res);
	if (FUNC0(p->base)) {
		ret = FUNC1(p->base);
		goto out_clk;
	}

	ret = FUNC10(&p->chip);
	if (ret) {
		FUNC4(&pdev->dev, "failed to add PWM chip: %d\n", ret);
		goto out_clk;
	}

	return 0;

out_clk:
	FUNC2(p->clk);
	return ret;
}