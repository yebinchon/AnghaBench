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
struct TYPE_3__ {int base; unsigned int npwm; int of_pwm_n_cells; int /*<<< orphan*/  of_xlate; int /*<<< orphan*/ * ops; struct device* dev; } ;
struct TYPE_4__ {int output_mask; } ;
struct samsung_pwm_chip {int inverter_mask; void* tclk1; void* tclk0; void* base_clk; TYPE_1__ chip; TYPE_2__ variant; void* base; } ;
struct resource {int dummy; } ;
struct device {int /*<<< orphan*/  platform_data; scalar_t__ of_node; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  CONFIG_OF ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (void*) ; 
 int FUNC3 (void*) ; 
 unsigned int SAMSUNG_PWM_NUM ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*) ; 
 void* FUNC9 (struct device*,char*) ; 
 void* FUNC10 (struct device*,struct resource*) ; 
 struct samsung_pwm_chip* FUNC11 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  of_pwm_xlate_with_flags ; 
 struct resource* FUNC13 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct samsung_pwm_chip*) ; 
 int /*<<< orphan*/  pwm_samsung_ops ; 
 int FUNC15 (struct samsung_pwm_chip*) ; 
 int /*<<< orphan*/  FUNC16 (struct samsung_pwm_chip*,unsigned int,int) ; 
 int FUNC17 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct samsung_pwm_chip *chip;
	struct resource *res;
	unsigned int chan;
	int ret;

	chip = FUNC11(&pdev->dev, sizeof(*chip), GFP_KERNEL);
	if (chip == NULL)
		return -ENOMEM;

	chip->chip.dev = &pdev->dev;
	chip->chip.ops = &pwm_samsung_ops;
	chip->chip.base = -1;
	chip->chip.npwm = SAMSUNG_PWM_NUM;
	chip->inverter_mask = FUNC0(SAMSUNG_PWM_NUM) - 1;

	if (FUNC1(CONFIG_OF) && pdev->dev.of_node) {
		ret = FUNC15(chip);
		if (ret)
			return ret;

		chip->chip.of_xlate = of_pwm_xlate_with_flags;
		chip->chip.of_pwm_n_cells = 3;
	} else {
		if (!pdev->dev.platform_data) {
			FUNC8(&pdev->dev, "no platform data specified\n");
			return -EINVAL;
		}

		FUNC12(&chip->variant, pdev->dev.platform_data,
							sizeof(chip->variant));
	}

	res = FUNC13(pdev, IORESOURCE_MEM, 0);
	chip->base = FUNC10(&pdev->dev, res);
	if (FUNC2(chip->base))
		return FUNC3(chip->base);

	chip->base_clk = FUNC9(&pdev->dev, "timers");
	if (FUNC2(chip->base_clk)) {
		FUNC8(dev, "failed to get timer base clk\n");
		return FUNC3(chip->base_clk);
	}

	ret = FUNC6(chip->base_clk);
	if (ret < 0) {
		FUNC8(dev, "failed to enable base clock\n");
		return ret;
	}

	for (chan = 0; chan < SAMSUNG_PWM_NUM; ++chan)
		if (chip->variant.output_mask & FUNC0(chan))
			FUNC16(chip, chan, true);

	/* Following clocks are optional. */
	chip->tclk0 = FUNC9(&pdev->dev, "pwm-tclk0");
	chip->tclk1 = FUNC9(&pdev->dev, "pwm-tclk1");

	FUNC14(pdev, chip);

	ret = FUNC17(&chip->chip);
	if (ret < 0) {
		FUNC8(dev, "failed to register PWM chip\n");
		FUNC4(chip->base_clk);
		return ret;
	}

	FUNC7(dev, "base_clk at %lu, tclk0 at %lu, tclk1 at %lu\n",
		FUNC5(chip->base_clk),
		!FUNC2(chip->tclk0) ? FUNC5(chip->tclk0) : 0,
		!FUNC2(chip->tclk1) ? FUNC5(chip->tclk1) : 0);

	return 0;
}