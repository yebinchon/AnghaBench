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
struct mxs_ssp {int /*<<< orphan*/  dmach; } ;
struct mxs_spi {struct mxs_ssp ssp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct spi_master* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct mxs_spi* FUNC5 (struct spi_master*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct spi_master *master;
	struct mxs_spi *spi;
	struct mxs_ssp *ssp;

	master = FUNC2(pdev);
	spi = FUNC5(master);
	ssp = &spi->ssp;

	FUNC3(&pdev->dev);
	if (!FUNC4(&pdev->dev))
		FUNC1(&pdev->dev);

	FUNC0(ssp->dmach);

	return 0;
}