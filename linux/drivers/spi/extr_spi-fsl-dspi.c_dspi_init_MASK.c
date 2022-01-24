#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct fsl_dspi {int /*<<< orphan*/  regmap; TYPE_1__* devtype_data; int /*<<< orphan*/  ctlr; } ;
struct TYPE_2__ {scalar_t__ xspi_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPI_MCR ; 
 unsigned int SPI_MCR_MASTER ; 
 unsigned int SPI_MCR_PCSIS ; 
 unsigned int SPI_MCR_XSPI ; 
 int /*<<< orphan*/  SPI_SR ; 
 unsigned int SPI_SR_CLEAR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct fsl_dspi *dspi)
{
	unsigned int mcr = SPI_MCR_PCSIS;

	if (dspi->devtype_data->xspi_mode)
		mcr |= SPI_MCR_XSPI;
	if (!FUNC4(dspi->ctlr))
		mcr |= SPI_MCR_MASTER;

	FUNC3(dspi->regmap, SPI_MCR, mcr);
	FUNC3(dspi->regmap, SPI_SR, SPI_SR_CLEAR);
	if (dspi->devtype_data->xspi_mode)
		FUNC3(dspi->regmap, FUNC0(0),
			     FUNC2(0) | FUNC1(1));
}