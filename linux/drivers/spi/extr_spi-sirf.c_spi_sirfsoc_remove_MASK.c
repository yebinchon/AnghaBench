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
struct sirfsoc_spi {int /*<<< orphan*/  tx_chan; int /*<<< orphan*/  rx_chan; int /*<<< orphan*/  clk; int /*<<< orphan*/  bitbang; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct spi_master* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct sirfsoc_spi* FUNC5 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC6 (struct spi_master*) ; 

__attribute__((used)) static int  FUNC7(struct platform_device *pdev)
{
	struct spi_master *master;
	struct sirfsoc_spi *sspi;

	master = FUNC3(pdev);
	sspi = FUNC5(master);
	FUNC4(&sspi->bitbang);
	FUNC0(sspi->clk);
	FUNC1(sspi->clk);
	FUNC2(sspi->rx_chan);
	FUNC2(sspi->tx_chan);
	FUNC6(master);
	return 0;
}