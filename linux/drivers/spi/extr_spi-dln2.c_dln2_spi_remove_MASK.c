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
struct dln2_spi {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (struct dln2_spi*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct spi_master* FUNC4 (int /*<<< orphan*/ ) ; 
 struct dln2_spi* FUNC5 (struct spi_master*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct spi_master *master = FUNC4(FUNC2(pdev));
	struct dln2_spi *dln2 = FUNC5(master);

	FUNC3(&pdev->dev);

	if (FUNC1(dln2, false) < 0)
		FUNC0(&pdev->dev, "Failed to disable SPI module\n");

	return 0;
}