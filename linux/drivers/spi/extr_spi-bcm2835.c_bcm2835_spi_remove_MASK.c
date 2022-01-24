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
struct bcm2835_spi {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCM2835_SPI_CS ; 
 int BCM2835_SPI_CS_CLEAR_RX ; 
 int BCM2835_SPI_CS_CLEAR_TX ; 
 int /*<<< orphan*/  FUNC0 (struct bcm2835_spi*) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_controller*,struct bcm2835_spi*) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm2835_spi*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct spi_controller* FUNC4 (struct platform_device*) ; 
 struct bcm2835_spi* FUNC5 (struct spi_controller*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct spi_controller *ctlr = FUNC4(pdev);
	struct bcm2835_spi *bs = FUNC5(ctlr);

	FUNC0(bs);

	/* Clear FIFOs, and disable the HW block */
	FUNC2(bs, BCM2835_SPI_CS,
		   BCM2835_SPI_CS_CLEAR_RX | BCM2835_SPI_CS_CLEAR_TX);

	FUNC3(bs->clk);

	FUNC1(ctlr, bs);

	return 0;
}