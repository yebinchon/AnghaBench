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
typedef  int u8 ;
struct sifive_spi {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIFIVE_SPI_REG_TXDATA ; 
 int const SIFIVE_SPI_TXDATA_DATA_MASK ; 
 int SIFIVE_SPI_TXDATA_FULL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct sifive_spi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sifive_spi*,int /*<<< orphan*/ ,int const) ; 

__attribute__((used)) static void FUNC3(struct sifive_spi *spi, const u8 *tx_ptr)
{
	FUNC0((FUNC1(spi, SIFIVE_SPI_REG_TXDATA)
				& SIFIVE_SPI_TXDATA_FULL) != 0);
	FUNC2(spi, SIFIVE_SPI_REG_TXDATA,
			 *tx_ptr & SIFIVE_SPI_TXDATA_DATA_MASK);
}