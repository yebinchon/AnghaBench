#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct platform_device {int /*<<< orphan*/  dev; } ;
struct exynos_tmu_data {int soc; int irq; void* regulator; void* clk_sec; void* clk; void* sclk; void* tzd; int /*<<< orphan*/  irq_work; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int IRQF_SHARED ; 
 int IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int SOC_ARCH_EXYNOS5420_TRIMINFO ; 
#define  SOC_ARCH_EXYNOS5433 129 
#define  SOC_ARCH_EXYNOS7 128 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int FUNC4 (void*) ; 
 int FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 void* FUNC10 (int /*<<< orphan*/ *,char*) ; 
 struct exynos_tmu_data* FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 void* FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int FUNC13 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct exynos_tmu_data*) ; 
 int FUNC14 (struct platform_device*) ; 
 int /*<<< orphan*/  exynos_sensor_ops ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,int) ; 
 int FUNC16 (struct platform_device*) ; 
 int /*<<< orphan*/  exynos_tmu_irq ; 
 int /*<<< orphan*/  exynos_tmu_work ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct platform_device*,struct exynos_tmu_data*) ; 
 int /*<<< orphan*/  FUNC19 (void*) ; 
 int FUNC20 (void*) ; 
 void* FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct exynos_tmu_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,void*) ; 

__attribute__((used)) static int FUNC23(struct platform_device *pdev)
{
	struct exynos_tmu_data *data;
	int ret;

	data = FUNC11(&pdev->dev, sizeof(struct exynos_tmu_data),
					GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	FUNC18(pdev, data);
	FUNC17(&data->lock);

	/*
	 * Try enabling the regulator if found
	 * TODO: Add regulator as an SOC feature, so that regulator enable
	 * is a compulsory call.
	 */
	data->regulator = FUNC12(&pdev->dev, "vtmu");
	if (!FUNC1(data->regulator)) {
		ret = FUNC20(data->regulator);
		if (ret) {
			FUNC7(&pdev->dev, "failed to enable vtmu\n");
			return ret;
		}
	} else {
		if (FUNC2(data->regulator) == -EPROBE_DEFER)
			return -EPROBE_DEFER;
		FUNC8(&pdev->dev, "Regulator node (vtmu) not found\n");
	}

	ret = FUNC14(pdev);
	if (ret)
		goto err_sensor;

	FUNC0(&data->irq_work, exynos_tmu_work);

	data->clk = FUNC10(&pdev->dev, "tmu_apbif");
	if (FUNC1(data->clk)) {
		FUNC7(&pdev->dev, "Failed to get clock\n");
		ret = FUNC2(data->clk);
		goto err_sensor;
	}

	data->clk_sec = FUNC10(&pdev->dev, "tmu_triminfo_apbif");
	if (FUNC1(data->clk_sec)) {
		if (data->soc == SOC_ARCH_EXYNOS5420_TRIMINFO) {
			FUNC7(&pdev->dev, "Failed to get triminfo clock\n");
			ret = FUNC2(data->clk_sec);
			goto err_sensor;
		}
	} else {
		ret = FUNC4(data->clk_sec);
		if (ret) {
			FUNC7(&pdev->dev, "Failed to get clock\n");
			goto err_sensor;
		}
	}

	ret = FUNC4(data->clk);
	if (ret) {
		FUNC7(&pdev->dev, "Failed to get clock\n");
		goto err_clk_sec;
	}

	switch (data->soc) {
	case SOC_ARCH_EXYNOS5433:
	case SOC_ARCH_EXYNOS7:
		data->sclk = FUNC10(&pdev->dev, "tmu_sclk");
		if (FUNC1(data->sclk)) {
			FUNC7(&pdev->dev, "Failed to get sclk\n");
			goto err_clk;
		} else {
			ret = FUNC5(data->sclk);
			if (ret) {
				FUNC7(&pdev->dev, "Failed to enable sclk\n");
				goto err_clk;
			}
		}
		break;
	default:
		break;
	}

	/*
	 * data->tzd must be registered before calling exynos_tmu_initialize(),
	 * requesting irq and calling exynos_tmu_control().
	 */
	data->tzd = FUNC21(&pdev->dev, 0, data,
						    &exynos_sensor_ops);
	if (FUNC1(data->tzd)) {
		ret = FUNC2(data->tzd);
		FUNC7(&pdev->dev, "Failed to register sensor: %d\n", ret);
		goto err_sclk;
	}

	ret = FUNC16(pdev);
	if (ret) {
		FUNC7(&pdev->dev, "Failed to initialize TMU\n");
		goto err_thermal;
	}

	ret = FUNC13(&pdev->dev, data->irq, exynos_tmu_irq,
		IRQF_TRIGGER_RISING | IRQF_SHARED, FUNC9(&pdev->dev), data);
	if (ret) {
		FUNC7(&pdev->dev, "Failed to request irq: %d\n", data->irq);
		goto err_thermal;
	}

	FUNC15(pdev, true);
	return 0;

err_thermal:
	FUNC22(&pdev->dev, data->tzd);
err_sclk:
	FUNC3(data->sclk);
err_clk:
	FUNC6(data->clk);
err_clk_sec:
	if (!FUNC1(data->clk_sec))
		FUNC6(data->clk_sec);
err_sensor:
	if (!FUNC1(data->regulator))
		FUNC19(data->regulator);

	return ret;
}