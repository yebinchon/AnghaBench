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
struct omap1_spi100k {int /*<<< orphan*/  ick; int /*<<< orphan*/  fck; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct spi_master* FUNC3 (int /*<<< orphan*/ ) ; 
 struct omap1_spi100k* FUNC4 (struct spi_master*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct spi_master *master = FUNC3(FUNC1(pdev));
	struct omap1_spi100k *spi100k = FUNC4(master);

	FUNC2(&pdev->dev);

	FUNC0(spi100k->fck);
	FUNC0(spi100k->ick);

	return 0;
}