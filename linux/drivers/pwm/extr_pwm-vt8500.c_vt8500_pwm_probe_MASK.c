#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int of_pwm_n_cells; int base; int /*<<< orphan*/  npwm; int /*<<< orphan*/  of_xlate; int /*<<< orphan*/ * ops; TYPE_2__* dev; } ;
struct vt8500_chip {int /*<<< orphan*/  clk; TYPE_1__ chip; int /*<<< orphan*/  base; } ;
struct resource {int dummy; } ;
struct TYPE_7__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VT8500_NR_PWMS ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,struct resource*) ; 
 struct vt8500_chip* FUNC7 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  of_pwm_xlate_with_flags ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct vt8500_chip*) ; 
 int FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  vt8500_pwm_ops ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct vt8500_chip *chip;
	struct resource *r;
	struct device_node *np = pdev->dev.of_node;
	int ret;

	if (!np) {
		FUNC4(&pdev->dev, "invalid devicetree node\n");
		return -EINVAL;
	}

	chip = FUNC7(&pdev->dev, sizeof(*chip), GFP_KERNEL);
	if (chip == NULL)
		return -ENOMEM;

	chip->chip.dev = &pdev->dev;
	chip->chip.ops = &vt8500_pwm_ops;
	chip->chip.of_xlate = of_pwm_xlate_with_flags;
	chip->chip.of_pwm_n_cells = 3;
	chip->chip.base = -1;
	chip->chip.npwm = VT8500_NR_PWMS;

	chip->clk = FUNC5(&pdev->dev, NULL);
	if (FUNC0(chip->clk)) {
		FUNC4(&pdev->dev, "clock source not specified\n");
		return FUNC1(chip->clk);
	}

	r = FUNC8(pdev, IORESOURCE_MEM, 0);
	chip->base = FUNC6(&pdev->dev, r);
	if (FUNC0(chip->base))
		return FUNC1(chip->base);

	ret = FUNC2(chip->clk);
	if (ret < 0) {
		FUNC4(&pdev->dev, "failed to prepare clock\n");
		return ret;
	}

	ret = FUNC10(&chip->chip);
	if (ret < 0) {
		FUNC4(&pdev->dev, "failed to add PWM chip\n");
		FUNC3(chip->clk);
		return ret;
	}

	FUNC9(pdev, chip);
	return ret;
}