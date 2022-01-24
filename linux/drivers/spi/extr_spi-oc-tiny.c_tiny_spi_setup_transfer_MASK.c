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
struct tiny_spi {unsigned int baud; scalar_t__ speed_hz; unsigned int mode; scalar_t__ base; } ;
struct spi_transfer {scalar_t__ speed_hz; } ;
struct spi_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ TINY_SPI_BAUD ; 
 scalar_t__ TINY_SPI_CONTROL ; 
 unsigned int FUNC0 (struct spi_device*,scalar_t__) ; 
 struct tiny_spi* FUNC1 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct spi_device *spi,
				   struct spi_transfer *t)
{
	struct tiny_spi *hw = FUNC1(spi);
	unsigned int baud = hw->baud;

	if (t) {
		if (t->speed_hz && t->speed_hz != hw->speed_hz)
			baud = FUNC0(spi, t->speed_hz);
	}
	FUNC2(baud, hw->base + TINY_SPI_BAUD);
	FUNC2(hw->mode, hw->base + TINY_SPI_CONTROL);
	return 0;
}