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
struct meson_spifc {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct spi_master* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct meson_spifc* FUNC4 (struct spi_master*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct spi_master *master = FUNC1(pdev);
	struct meson_spifc *spifc = FUNC4(master);

	FUNC3(&pdev->dev);
	FUNC0(spifc->clk);
	FUNC2(&pdev->dev);

	return 0;
}