#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int npwm; int base; TYPE_1__* pwms; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * dev; } ;
struct lpc32xx_pwm_chip {TYPE_2__ chip; scalar_t__ base; scalar_t__ clk; } ;
struct TYPE_3__ {int hwpwm; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  PWM_PIN_LEVEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,struct resource*) ; 
 struct lpc32xx_pwm_chip* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpc32xx_pwm_ops ; 
 struct resource* FUNC6 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct lpc32xx_pwm_chip*) ; 
 int FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct lpc32xx_pwm_chip *lpc32xx;
	struct resource *res;
	int ret;
	u32 val;

	lpc32xx = FUNC5(&pdev->dev, sizeof(*lpc32xx), GFP_KERNEL);
	if (!lpc32xx)
		return -ENOMEM;

	res = FUNC6(pdev, IORESOURCE_MEM, 0);
	lpc32xx->base = FUNC4(&pdev->dev, res);
	if (FUNC0(lpc32xx->base))
		return FUNC1(lpc32xx->base);

	lpc32xx->clk = FUNC3(&pdev->dev, NULL);
	if (FUNC0(lpc32xx->clk))
		return FUNC1(lpc32xx->clk);

	lpc32xx->chip.dev = &pdev->dev;
	lpc32xx->chip.ops = &lpc32xx_pwm_ops;
	lpc32xx->chip.npwm = 1;
	lpc32xx->chip.base = -1;

	ret = FUNC8(&lpc32xx->chip);
	if (ret < 0) {
		FUNC2(&pdev->dev, "failed to add PWM chip, error %d\n", ret);
		return ret;
	}

	/* When PWM is disable, configure the output to the default value */
	val = FUNC9(lpc32xx->base + (lpc32xx->chip.pwms[0].hwpwm << 2));
	val &= ~PWM_PIN_LEVEL;
	FUNC10(val, lpc32xx->base + (lpc32xx->chip.pwms[0].hwpwm << 2));

	FUNC7(pdev, lpc32xx);

	return 0;
}