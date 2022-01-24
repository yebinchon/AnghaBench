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
typedef  int u32 ;
struct xtfpga_spi {int data; int data_sz; } ;
struct spi_device {int /*<<< orphan*/  master; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XTFPGA_SPI_DATA ; 
 int /*<<< orphan*/  XTFPGA_SPI_START ; 
 struct xtfpga_spi* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xtfpga_spi*) ; 
 int /*<<< orphan*/  FUNC3 (struct xtfpga_spi*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static u32 FUNC4(struct spi_device *spi, unsigned nsecs,
				u32 v, u8 bits, unsigned flags)
{
	struct xtfpga_spi *xspi = FUNC1(spi->master);

	xspi->data = (xspi->data << bits) | (v & FUNC0(bits - 1, 0));
	xspi->data_sz += bits;
	if (xspi->data_sz >= 16) {
		FUNC3(xspi, XTFPGA_SPI_DATA,
				   xspi->data >> (xspi->data_sz - 16));
		xspi->data_sz -= 16;
		FUNC3(xspi, XTFPGA_SPI_START, 1);
		FUNC2(xspi);
		FUNC3(xspi, XTFPGA_SPI_START, 0);
	}

	return 0;
}