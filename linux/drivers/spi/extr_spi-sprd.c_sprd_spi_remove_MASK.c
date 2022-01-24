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
struct TYPE_2__ {scalar_t__ enable; } ;
struct sprd_spi {int /*<<< orphan*/  clk; TYPE_1__ dma; int /*<<< orphan*/  dev; } ;
struct spi_controller {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct spi_controller* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct sprd_spi* FUNC6 (struct spi_controller*) ; 
 int /*<<< orphan*/  FUNC7 (struct spi_controller*) ; 
 int /*<<< orphan*/  FUNC8 (struct sprd_spi*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct spi_controller *sctlr = FUNC2(pdev);
	struct sprd_spi *ss = FUNC6(sctlr);
	int ret;

	ret = FUNC4(ss->dev);
	if (ret < 0) {
		FUNC1(ss->dev, "failed to resume SPI controller\n");
		return ret;
	}

	FUNC7(sctlr);

	if (ss->dma.enable)
		FUNC8(ss);
	FUNC0(ss->clk);
	FUNC5(&pdev->dev);
	FUNC3(&pdev->dev);

	return 0;
}