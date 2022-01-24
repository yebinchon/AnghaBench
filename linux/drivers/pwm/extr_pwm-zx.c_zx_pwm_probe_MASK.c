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
struct TYPE_2__ {int base; int npwm; int of_pwm_n_cells; int /*<<< orphan*/  of_xlate; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * dev; } ;
struct zx_pwm_chip {TYPE_1__ chip; void* pclk; void* wclk; void* base; } ;
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  ZX_PWM_EN ; 
 int /*<<< orphan*/  ZX_PWM_MODE ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 void* FUNC4 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC5 (int /*<<< orphan*/ *,struct resource*) ; 
 struct zx_pwm_chip* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  of_pwm_xlate_with_flags ; 
 struct resource* FUNC7 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct zx_pwm_chip*) ; 
 int FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  zx_pwm_ops ; 
 int /*<<< orphan*/  FUNC10 (struct zx_pwm_chip*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct zx_pwm_chip *zpc;
	struct resource *res;
	unsigned int i;
	int ret;

	zpc = FUNC6(&pdev->dev, sizeof(*zpc), GFP_KERNEL);
	if (!zpc)
		return -ENOMEM;

	res = FUNC7(pdev, IORESOURCE_MEM, 0);
	zpc->base = FUNC5(&pdev->dev, res);
	if (FUNC0(zpc->base))
		return FUNC1(zpc->base);

	zpc->pclk = FUNC4(&pdev->dev, "pclk");
	if (FUNC0(zpc->pclk))
		return FUNC1(zpc->pclk);

	zpc->wclk = FUNC4(&pdev->dev, "wclk");
	if (FUNC0(zpc->wclk))
		return FUNC1(zpc->wclk);

	ret = FUNC2(zpc->pclk);
	if (ret)
		return ret;

	zpc->chip.dev = &pdev->dev;
	zpc->chip.ops = &zx_pwm_ops;
	zpc->chip.base = -1;
	zpc->chip.npwm = 4;
	zpc->chip.of_xlate = of_pwm_xlate_with_flags;
	zpc->chip.of_pwm_n_cells = 3;

	/*
	 * PWM devices may be enabled by firmware, and let's disable all of
	 * them initially to save power.
	 */
	for (i = 0; i < zpc->chip.npwm; i++)
		FUNC10(zpc, i, ZX_PWM_MODE, ZX_PWM_EN, 0);

	ret = FUNC9(&zpc->chip);
	if (ret < 0) {
		FUNC3(&pdev->dev, "failed to add PWM chip: %d\n", ret);
		return ret;
	}

	FUNC8(pdev, zpc);

	return 0;
}