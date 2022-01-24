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
struct tiny_spi {scalar_t__ speed_hz; int mode; int /*<<< orphan*/  baud; } ;
struct spi_device {scalar_t__ max_speed_hz; int mode; } ;

/* Variables and functions */
 int SPI_CPHA ; 
 int SPI_CPOL ; 
 int /*<<< orphan*/  FUNC0 (struct spi_device*,scalar_t__) ; 
 struct tiny_spi* FUNC1 (struct spi_device*) ; 

__attribute__((used)) static int FUNC2(struct spi_device *spi)
{
	struct tiny_spi *hw = FUNC1(spi);

	if (spi->max_speed_hz != hw->speed_hz) {
		hw->speed_hz = spi->max_speed_hz;
		hw->baud = FUNC0(spi, hw->speed_hz);
	}
	hw->mode = spi->mode & (SPI_CPOL | SPI_CPHA);
	return 0;
}