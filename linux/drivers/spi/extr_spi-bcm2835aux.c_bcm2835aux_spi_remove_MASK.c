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
struct platform_device {int dummy; } ;
struct bcm2835aux_spi {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bcm2835aux_spi*) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm2835aux_spi*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct spi_master* FUNC3 (struct platform_device*) ; 
 struct bcm2835aux_spi* FUNC4 (struct spi_master*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct spi_master *master = FUNC3(pdev);
	struct bcm2835aux_spi *bs = FUNC4(master);

	FUNC0(bs);

	FUNC1(bs);

	/* disable the HW block by releasing the clock */
	FUNC2(bs->clk);

	return 0;
}