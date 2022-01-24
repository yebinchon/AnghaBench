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
struct spi_geni_master {int /*<<< orphan*/  irq; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct spi_master*) ; 
 struct spi_master* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct spi_geni_master* FUNC3 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_master*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct spi_master *spi = FUNC1(pdev);
	struct spi_geni_master *mas = FUNC3(spi);

	/* Unregister _before_ disabling pm_runtime() so we stop transfers */
	FUNC4(spi);

	FUNC0(mas->irq, spi);
	FUNC2(&pdev->dev);
	return 0;
}