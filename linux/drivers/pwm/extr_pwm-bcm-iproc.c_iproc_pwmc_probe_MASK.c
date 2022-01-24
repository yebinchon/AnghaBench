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
typedef  int u32 ;
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int base; int npwm; int of_pwm_n_cells; int /*<<< orphan*/  of_xlate; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * dev; } ;
struct iproc_pwmc {scalar_t__ clk; TYPE_1__ chip; scalar_t__ base; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ IPROC_PWM_CTRL_OFFSET ; 
 int FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,struct resource*) ; 
 struct iproc_pwmc* FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iproc_pwm_ops ; 
 int /*<<< orphan*/  of_pwm_xlate_with_flags ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct iproc_pwmc*) ; 
 int FUNC12 (TYPE_1__*) ; 
 int FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct iproc_pwmc *ip;
	struct resource *res;
	unsigned int i;
	u32 value;
	int ret;

	ip = FUNC9(&pdev->dev, sizeof(*ip), GFP_KERNEL);
	if (!ip)
		return -ENOMEM;

	FUNC11(pdev, ip);

	ip->chip.dev = &pdev->dev;
	ip->chip.ops = &iproc_pwm_ops;
	ip->chip.base = -1;
	ip->chip.npwm = 4;
	ip->chip.of_xlate = of_pwm_xlate_with_flags;
	ip->chip.of_pwm_n_cells = 3;

	res = FUNC10(pdev, IORESOURCE_MEM, 0);
	ip->base = FUNC8(&pdev->dev, res);
	if (FUNC2(ip->base))
		return FUNC3(ip->base);

	ip->clk = FUNC7(&pdev->dev, NULL);
	if (FUNC2(ip->clk)) {
		FUNC6(&pdev->dev, "failed to get clock: %ld\n",
			FUNC3(ip->clk));
		return FUNC3(ip->clk);
	}

	ret = FUNC5(ip->clk);
	if (ret < 0) {
		FUNC6(&pdev->dev, "failed to enable clock: %d\n", ret);
		return ret;
	}

	/* Set full drive and normal polarity for all channels */
	value = FUNC13(ip->base + IPROC_PWM_CTRL_OFFSET);

	for (i = 0; i < ip->chip.npwm; i++) {
		value &= ~(1 << FUNC1(i));
		value |= 1 << FUNC0(i);
	}

	FUNC14(value, ip->base + IPROC_PWM_CTRL_OFFSET);

	ret = FUNC12(&ip->chip);
	if (ret < 0) {
		FUNC6(&pdev->dev, "failed to add PWM chip: %d\n", ret);
		FUNC4(ip->clk);
	}

	return ret;
}