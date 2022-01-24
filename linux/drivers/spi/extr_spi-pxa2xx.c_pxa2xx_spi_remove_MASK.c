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
struct ssp_device {int /*<<< orphan*/  irq; int /*<<< orphan*/  clk; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct driver_data {TYPE_1__* controller_info; struct ssp_device* ssp; } ;
struct TYPE_2__ {scalar_t__ enable_dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  SSCR0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct driver_data*) ; 
 struct driver_data* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct driver_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct driver_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ssp_device*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct driver_data *drv_data = FUNC2(pdev);
	struct ssp_device *ssp;

	if (!drv_data)
		return 0;
	ssp = drv_data->ssp;

	FUNC4(&pdev->dev);

	/* Disable the SSP at the peripheral and SOC level */
	FUNC7(drv_data, SSCR0, 0);
	FUNC0(ssp->clk);

	/* Release DMA */
	if (drv_data->controller_info->enable_dma)
		FUNC6(drv_data);

	FUNC5(&pdev->dev);
	FUNC3(&pdev->dev);

	/* Release IRQ */
	FUNC1(ssp->irq, drv_data);

	/* Release SSP */
	FUNC8(ssp);

	return 0;
}