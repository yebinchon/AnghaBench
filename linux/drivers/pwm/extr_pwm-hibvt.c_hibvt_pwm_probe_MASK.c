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
struct hibvt_pwm_soc {int num_pwms; } ;
struct TYPE_2__ {int base; int npwm; int of_pwm_n_cells; int /*<<< orphan*/  of_xlate; int /*<<< orphan*/ * dev; int /*<<< orphan*/ * ops; } ;
struct hibvt_pwm_chip {int /*<<< orphan*/  base; TYPE_1__ chip; int /*<<< orphan*/  clk; int /*<<< orphan*/  rstc; struct hibvt_pwm_soc const* soc; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  PWM_KEEP_MASK ; 
 int PWM_KEEP_SHIFT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct resource*) ; 
 struct hibvt_pwm_chip* FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hibvt_pwm_ops ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 struct hibvt_pwm_soc* FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  of_pwm_xlate_with_flags ; 
 struct resource* FUNC13 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct hibvt_pwm_chip*) ; 
 int FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	const struct hibvt_pwm_soc *soc =
				FUNC12(&pdev->dev);
	struct hibvt_pwm_chip *pwm_chip;
	struct resource *res;
	int ret;
	int i;

	pwm_chip = FUNC8(&pdev->dev, sizeof(*pwm_chip), GFP_KERNEL);
	if (pwm_chip == NULL)
		return -ENOMEM;

	pwm_chip->clk = FUNC6(&pdev->dev, NULL);
	if (FUNC0(pwm_chip->clk)) {
		FUNC5(&pdev->dev, "getting clock failed with %ld\n",
				FUNC1(pwm_chip->clk));
		return FUNC1(pwm_chip->clk);
	}

	pwm_chip->chip.ops = &hibvt_pwm_ops;
	pwm_chip->chip.dev = &pdev->dev;
	pwm_chip->chip.base = -1;
	pwm_chip->chip.npwm = soc->num_pwms;
	pwm_chip->chip.of_xlate = of_pwm_xlate_with_flags;
	pwm_chip->chip.of_pwm_n_cells = 3;
	pwm_chip->soc = soc;

	res = FUNC13(pdev, IORESOURCE_MEM, 0);
	pwm_chip->base = FUNC7(&pdev->dev, res);
	if (FUNC0(pwm_chip->base))
		return FUNC1(pwm_chip->base);

	ret = FUNC4(pwm_chip->clk);
	if (ret < 0)
		return ret;

	pwm_chip->rstc = FUNC9(&pdev->dev, NULL);
	if (FUNC0(pwm_chip->rstc)) {
		FUNC3(pwm_chip->clk);
		return FUNC1(pwm_chip->rstc);
	}

	FUNC16(pwm_chip->rstc);
	FUNC11(30);
	FUNC17(pwm_chip->rstc);

	ret = FUNC15(&pwm_chip->chip);
	if (ret < 0) {
		FUNC3(pwm_chip->clk);
		return ret;
	}

	for (i = 0; i < pwm_chip->chip.npwm; i++) {
		FUNC10(pwm_chip->base, FUNC2(i),
				PWM_KEEP_MASK, (0x1 << PWM_KEEP_SHIFT));
	}

	FUNC14(pdev, pwm_chip);

	return 0;
}