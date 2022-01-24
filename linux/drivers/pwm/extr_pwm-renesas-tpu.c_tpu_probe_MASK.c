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
struct TYPE_2__ {int of_pwm_n_cells; int base; int /*<<< orphan*/  npwm; int /*<<< orphan*/  of_xlate; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * dev; } ;
struct tpu_device {struct platform_device* pdev; TYPE_1__ chip; int /*<<< orphan*/  clk; int /*<<< orphan*/  base; int /*<<< orphan*/  lock; } ;
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TPU_CHANNEL_MAX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct resource*) ; 
 struct tpu_device* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  of_pwm_xlate_with_flags ; 
 struct resource* FUNC7 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct tpu_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tpu_pwm_ops ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct tpu_device *tpu;
	struct resource *res;
	int ret;

	tpu = FUNC6(&pdev->dev, sizeof(*tpu), GFP_KERNEL);
	if (tpu == NULL)
		return -ENOMEM;

	FUNC11(&tpu->lock);
	tpu->pdev = pdev;

	/* Map memory, get clock and pin control. */
	res = FUNC7(pdev, IORESOURCE_MEM, 0);
	tpu->base = FUNC5(&pdev->dev, res);
	if (FUNC0(tpu->base))
		return FUNC1(tpu->base);

	tpu->clk = FUNC4(&pdev->dev, NULL);
	if (FUNC0(tpu->clk)) {
		FUNC2(&pdev->dev, "cannot get clock\n");
		return FUNC1(tpu->clk);
	}

	/* Initialize and register the device. */
	FUNC8(pdev, tpu);

	tpu->chip.dev = &pdev->dev;
	tpu->chip.ops = &tpu_pwm_ops;
	tpu->chip.of_xlate = of_pwm_xlate_with_flags;
	tpu->chip.of_pwm_n_cells = 3;
	tpu->chip.base = -1;
	tpu->chip.npwm = TPU_CHANNEL_MAX;

	ret = FUNC10(&tpu->chip);
	if (ret < 0) {
		FUNC2(&pdev->dev, "failed to register PWM chip\n");
		return ret;
	}

	FUNC3(&pdev->dev, "TPU PWM %d registered\n", tpu->pdev->id);

	FUNC9(&pdev->dev);

	return 0;
}