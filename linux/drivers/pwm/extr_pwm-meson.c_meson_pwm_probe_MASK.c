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
struct TYPE_2__ {int base; int of_pwm_n_cells; int /*<<< orphan*/  of_xlate; int /*<<< orphan*/  npwm; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * dev; } ;
struct meson_pwm {TYPE_1__ chip; int /*<<< orphan*/  data; int /*<<< orphan*/  lock; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MESON_NUM_PWMS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct resource*) ; 
 struct meson_pwm* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct meson_pwm*) ; 
 int /*<<< orphan*/  meson_pwm_ops ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  of_pwm_xlate_with_flags ; 
 struct resource* FUNC7 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct meson_pwm*) ; 
 int FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct meson_pwm *meson;
	struct resource *regs;
	int err;

	meson = FUNC4(&pdev->dev, sizeof(*meson), GFP_KERNEL);
	if (!meson)
		return -ENOMEM;

	regs = FUNC7(pdev, IORESOURCE_MEM, 0);
	meson->base = FUNC3(&pdev->dev, regs);
	if (FUNC0(meson->base))
		return FUNC1(meson->base);

	FUNC10(&meson->lock);
	meson->chip.dev = &pdev->dev;
	meson->chip.ops = &meson_pwm_ops;
	meson->chip.base = -1;
	meson->chip.npwm = MESON_NUM_PWMS;
	meson->chip.of_xlate = of_pwm_xlate_with_flags;
	meson->chip.of_pwm_n_cells = 3;

	meson->data = FUNC6(&pdev->dev);

	err = FUNC5(meson);
	if (err < 0)
		return err;

	err = FUNC9(&meson->chip);
	if (err < 0) {
		FUNC2(&pdev->dev, "failed to register PWM chip: %d\n", err);
		return err;
	}

	FUNC8(pdev, meson);

	return 0;
}