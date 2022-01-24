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
struct spi_controller {int dummy; } ;
struct platform_device {int dummy; } ;
struct fsl_dspi {int /*<<< orphan*/  ctlr; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fsl_dspi*) ; 
 struct spi_controller* FUNC2 (struct platform_device*) ; 
 struct fsl_dspi* FUNC3 (struct spi_controller*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct spi_controller *ctlr = FUNC2(pdev);
	struct fsl_dspi *dspi = FUNC3(ctlr);

	/* Disconnect from the SPI framework */
	FUNC1(dspi);
	FUNC0(dspi->clk);
	FUNC4(dspi->ctlr);

	return 0;
}