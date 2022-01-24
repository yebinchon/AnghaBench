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
typedef  int /*<<< orphan*/  u32 ;
struct cdns_spi {scalar_t__ is_decoded_cs; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDNS_SPI_CR ; 
 int /*<<< orphan*/  CDNS_SPI_CR_DEFAULT ; 
 int /*<<< orphan*/  CDNS_SPI_CR_PERI_SEL ; 
 int /*<<< orphan*/  CDNS_SPI_ER ; 
 int /*<<< orphan*/  CDNS_SPI_ER_DISABLE ; 
 int /*<<< orphan*/  CDNS_SPI_ER_ENABLE ; 
 int /*<<< orphan*/  CDNS_SPI_IDR ; 
 int /*<<< orphan*/  CDNS_SPI_ISR ; 
 int /*<<< orphan*/  CDNS_SPI_IXR_ALL ; 
 int CDNS_SPI_IXR_RXNEMTY ; 
 int /*<<< orphan*/  CDNS_SPI_RXD ; 
 int FUNC0 (struct cdns_spi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cdns_spi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct cdns_spi *xspi)
{
	u32 ctrl_reg = CDNS_SPI_CR_DEFAULT;

	if (xspi->is_decoded_cs)
		ctrl_reg |= CDNS_SPI_CR_PERI_SEL;

	FUNC1(xspi, CDNS_SPI_ER, CDNS_SPI_ER_DISABLE);
	FUNC1(xspi, CDNS_SPI_IDR, CDNS_SPI_IXR_ALL);

	/* Clear the RX FIFO */
	while (FUNC0(xspi, CDNS_SPI_ISR) & CDNS_SPI_IXR_RXNEMTY)
		FUNC0(xspi, CDNS_SPI_RXD);

	FUNC1(xspi, CDNS_SPI_ISR, CDNS_SPI_IXR_ALL);
	FUNC1(xspi, CDNS_SPI_CR, ctrl_reg);
	FUNC1(xspi, CDNS_SPI_ER, CDNS_SPI_ER_ENABLE);
}