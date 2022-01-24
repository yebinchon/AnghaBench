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
struct TYPE_2__ {int base; int npwm; int of_pwm_n_cells; int /*<<< orphan*/  of_xlate; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * dev; } ;
struct kona_pwmc {TYPE_1__ chip; scalar_t__ clk; scalar_t__ base; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ PWM_CONTROL_OFFSET ; 
 int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  PWM_POLARITY_INVERSED ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,struct resource*) ; 
 struct kona_pwmc* FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kona_pwm_ops ; 
 int /*<<< orphan*/  of_pwm_xlate_with_flags ; 
 struct resource* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct kona_pwmc*) ; 
 int FUNC11 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct kona_pwmc *kp;
	struct resource *res;
	unsigned int chan;
	unsigned int value = 0;
	int ret = 0;

	kp = FUNC8(&pdev->dev, sizeof(*kp), GFP_KERNEL);
	if (kp == NULL)
		return -ENOMEM;

	FUNC10(pdev, kp);

	kp->chip.dev = &pdev->dev;
	kp->chip.ops = &kona_pwm_ops;
	kp->chip.base = -1;
	kp->chip.npwm = 6;
	kp->chip.of_xlate = of_pwm_xlate_with_flags;
	kp->chip.of_pwm_n_cells = 3;

	res = FUNC9(pdev, IORESOURCE_MEM, 0);
	kp->base = FUNC7(&pdev->dev, res);
	if (FUNC0(kp->base))
		return FUNC1(kp->base);

	kp->clk = FUNC6(&pdev->dev, NULL);
	if (FUNC0(kp->clk)) {
		FUNC5(&pdev->dev, "failed to get clock: %ld\n",
			FUNC1(kp->clk));
		return FUNC1(kp->clk);
	}

	ret = FUNC4(kp->clk);
	if (ret < 0) {
		FUNC5(&pdev->dev, "failed to enable clock: %d\n", ret);
		return ret;
	}

	/* Set push/pull for all channels */
	for (chan = 0; chan < kp->chip.npwm; chan++)
		value |= (1 << FUNC2(chan));

	FUNC12(value, kp->base + PWM_CONTROL_OFFSET);

	FUNC3(kp->clk);

	ret = FUNC11(&kp->chip, PWM_POLARITY_INVERSED);
	if (ret < 0)
		FUNC5(&pdev->dev, "failed to add PWM chip: %d\n", ret);

	return ret;
}