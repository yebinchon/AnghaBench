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
struct spi_master {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct mcfqspi {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  MCFQSPI_QMR_MSTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mcfqspi*) ; 
 int /*<<< orphan*/  FUNC2 (struct mcfqspi*,int /*<<< orphan*/ ) ; 
 struct spi_master* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct mcfqspi* FUNC5 (struct spi_master*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct spi_master *master = FUNC3(pdev);
	struct mcfqspi *mcfqspi = FUNC5(master);

	FUNC4(&pdev->dev);
	/* disable the hardware (set the baud rate to 0) */
	FUNC2(mcfqspi, MCFQSPI_QMR_MSTR);

	FUNC1(mcfqspi);
	FUNC0(mcfqspi->clk);

	return 0;
}