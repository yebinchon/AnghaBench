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
typedef  int /*<<< orphan*/  u32 ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int base; int of_pwm_n_cells; int /*<<< orphan*/  npwm; int /*<<< orphan*/  of_xlate; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * dev; } ;
struct imx_tpm_pwm_chip {scalar_t__ clk; TYPE_1__ chip; int /*<<< orphan*/  lock; scalar_t__ base; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ PWM_IMX_TPM_PARAM ; 
 int /*<<< orphan*/  PWM_IMX_TPM_PARAM_CHAN ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct imx_tpm_pwm_chip* FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  imx_tpm_pwm_ops ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  of_pwm_xlate_with_flags ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct imx_tpm_pwm_chip*) ; 
 int FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct imx_tpm_pwm_chip *tpm;
	int ret;
	u32 val;

	tpm = FUNC7(&pdev->dev, sizeof(*tpm), GFP_KERNEL);
	if (!tpm)
		return -ENOMEM;

	FUNC10(pdev, tpm);

	tpm->base = FUNC8(pdev, 0);
	if (FUNC1(tpm->base))
		return FUNC2(tpm->base);

	tpm->clk = FUNC6(&pdev->dev, NULL);
	if (FUNC1(tpm->clk)) {
		ret = FUNC2(tpm->clk);
		if (ret != -EPROBE_DEFER)
			FUNC5(&pdev->dev,
				"failed to get PWM clock: %d\n", ret);
		return ret;
	}

	ret = FUNC4(tpm->clk);
	if (ret) {
		FUNC5(&pdev->dev,
			"failed to prepare or enable clock: %d\n", ret);
		return ret;
	}

	tpm->chip.dev = &pdev->dev;
	tpm->chip.ops = &imx_tpm_pwm_ops;
	tpm->chip.base = -1;
	tpm->chip.of_xlate = of_pwm_xlate_with_flags;
	tpm->chip.of_pwm_n_cells = 3;

	/* get number of channels */
	val = FUNC12(tpm->base + PWM_IMX_TPM_PARAM);
	tpm->chip.npwm = FUNC0(PWM_IMX_TPM_PARAM_CHAN, val);

	FUNC9(&tpm->lock);

	ret = FUNC11(&tpm->chip);
	if (ret) {
		FUNC5(&pdev->dev, "failed to add PWM chip: %d\n", ret);
		FUNC3(tpm->clk);
	}

	return ret;
}