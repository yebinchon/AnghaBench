#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct rockchip_tsadc_chip {int chn_num; int /*<<< orphan*/  (* control ) (void*,int) ;int /*<<< orphan*/ * chn_id; int /*<<< orphan*/  (* initialize ) (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ;} ;
struct rockchip_thermal_data {void* clk; void* pclk; int /*<<< orphan*/ * sensors; struct rockchip_tsadc_chip const* chip; void* regs; int /*<<< orphan*/  tshut_polarity; int /*<<< orphan*/  grf; void* reset; struct platform_device* pdev; } ;
struct resource {int dummy; } ;
struct TYPE_8__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,...) ; 
 void* FUNC5 (TYPE_1__*,char*) ; 
 void* FUNC6 (TYPE_1__*,struct resource*) ; 
 struct rockchip_thermal_data* FUNC7 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,struct rockchip_thermal_data*) ; 
 void* FUNC9 (TYPE_1__*,char*) ; 
 struct of_device_id* FUNC10 (int /*<<< orphan*/ ,struct device_node*) ; 
 int /*<<< orphan*/  of_rockchip_thermal_match ; 
 int FUNC11 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC12 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct rockchip_thermal_data*) ; 
 int FUNC14 (TYPE_1__*,struct device_node*,struct rockchip_thermal_data*) ; 
 int /*<<< orphan*/  rockchip_thermal_alarm_irq_thread ; 
 int FUNC15 (struct platform_device*,struct rockchip_thermal_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (void*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (void*,int) ; 

__attribute__((used)) static int FUNC20(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct rockchip_thermal_data *thermal;
	const struct of_device_id *match;
	struct resource *res;
	int irq;
	int i;
	int error;

	match = FUNC10(of_rockchip_thermal_match, np);
	if (!match)
		return -ENXIO;

	irq = FUNC11(pdev, 0);
	if (irq < 0) {
		FUNC4(&pdev->dev, "no irq resource?\n");
		return -EINVAL;
	}

	thermal = FUNC7(&pdev->dev, sizeof(struct rockchip_thermal_data),
			       GFP_KERNEL);
	if (!thermal)
		return -ENOMEM;

	thermal->pdev = pdev;

	thermal->chip = (const struct rockchip_tsadc_chip *)match->data;
	if (!thermal->chip)
		return -EINVAL;

	res = FUNC12(pdev, IORESOURCE_MEM, 0);
	thermal->regs = FUNC6(&pdev->dev, res);
	if (FUNC0(thermal->regs))
		return FUNC1(thermal->regs);

	thermal->reset = FUNC9(&pdev->dev, "tsadc-apb");
	if (FUNC0(thermal->reset)) {
		error = FUNC1(thermal->reset);
		FUNC4(&pdev->dev, "failed to get tsadc reset: %d\n", error);
		return error;
	}

	thermal->clk = FUNC5(&pdev->dev, "tsadc");
	if (FUNC0(thermal->clk)) {
		error = FUNC1(thermal->clk);
		FUNC4(&pdev->dev, "failed to get tsadc clock: %d\n", error);
		return error;
	}

	thermal->pclk = FUNC5(&pdev->dev, "apb_pclk");
	if (FUNC0(thermal->pclk)) {
		error = FUNC1(thermal->pclk);
		FUNC4(&pdev->dev, "failed to get apb_pclk clock: %d\n",
			error);
		return error;
	}

	error = FUNC3(thermal->clk);
	if (error) {
		FUNC4(&pdev->dev, "failed to enable converter clock: %d\n",
			error);
		return error;
	}

	error = FUNC3(thermal->pclk);
	if (error) {
		FUNC4(&pdev->dev, "failed to enable pclk: %d\n", error);
		goto err_disable_clk;
	}

	FUNC16(thermal->reset);

	error = FUNC14(&pdev->dev, np, thermal);
	if (error) {
		FUNC4(&pdev->dev, "failed to parse device tree data: %d\n",
			error);
		goto err_disable_pclk;
	}

	thermal->chip->initialize(thermal->grf, thermal->regs,
				  thermal->tshut_polarity);

	for (i = 0; i < thermal->chip->chn_num; i++) {
		error = FUNC15(pdev, thermal,
						&thermal->sensors[i],
						thermal->chip->chn_id[i]);
		if (error) {
			FUNC4(&pdev->dev,
				"failed to register sensor[%d] : error = %d\n",
				i, error);
			goto err_disable_pclk;
		}
	}

	error = FUNC8(&pdev->dev, irq, NULL,
					  &rockchip_thermal_alarm_irq_thread,
					  IRQF_ONESHOT,
					  "rockchip_thermal", thermal);
	if (error) {
		FUNC4(&pdev->dev,
			"failed to request tsadc irq: %d\n", error);
		goto err_disable_pclk;
	}

	thermal->chip->control(thermal->regs, true);

	for (i = 0; i < thermal->chip->chn_num; i++)
		FUNC17(&thermal->sensors[i], true);

	FUNC13(pdev, thermal);

	return 0;

err_disable_pclk:
	FUNC2(thermal->pclk);
err_disable_clk:
	FUNC2(thermal->clk);

	return error;
}