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
struct TYPE_2__ {int base; int npwm; int of_pwm_n_cells; int /*<<< orphan*/  of_xlate; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * dev; } ;
struct pxa_pwm_chip {TYPE_1__ chip; int /*<<< orphan*/  mmio_base; int /*<<< orphan*/  clk; } ;
struct platform_device_id {int driver_data; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_OF ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HAS_SECONDARY_PWM ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct resource*) ; 
 struct pxa_pwm_chip* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct platform_device_id* FUNC7 (struct platform_device*) ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct pxa_pwm_chip*) ; 
 int FUNC10 (TYPE_1__*) ; 
 struct platform_device_id* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pxa_pwm_of_xlate ; 
 int /*<<< orphan*/  pxa_pwm_ops ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	const struct platform_device_id *id = FUNC7(pdev);
	struct pxa_pwm_chip *pwm;
	struct resource *r;
	int ret = 0;

	if (FUNC0(CONFIG_OF) && id == NULL)
		id = FUNC11(&pdev->dev);

	if (id == NULL)
		return -EINVAL;

	pwm = FUNC6(&pdev->dev, sizeof(*pwm), GFP_KERNEL);
	if (pwm == NULL)
		return -ENOMEM;

	pwm->clk = FUNC4(&pdev->dev, NULL);
	if (FUNC1(pwm->clk))
		return FUNC2(pwm->clk);

	pwm->chip.dev = &pdev->dev;
	pwm->chip.ops = &pxa_pwm_ops;
	pwm->chip.base = -1;
	pwm->chip.npwm = (id->driver_data & HAS_SECONDARY_PWM) ? 2 : 1;

	if (FUNC0(CONFIG_OF)) {
		pwm->chip.of_xlate = pxa_pwm_of_xlate;
		pwm->chip.of_pwm_n_cells = 1;
	}

	r = FUNC8(pdev, IORESOURCE_MEM, 0);
	pwm->mmio_base = FUNC5(&pdev->dev, r);
	if (FUNC1(pwm->mmio_base))
		return FUNC2(pwm->mmio_base);

	ret = FUNC10(&pwm->chip);
	if (ret < 0) {
		FUNC3(&pdev->dev, "pwmchip_add() failed: %d\n", ret);
		return ret;
	}

	FUNC9(pdev, pwm);
	return 0;
}