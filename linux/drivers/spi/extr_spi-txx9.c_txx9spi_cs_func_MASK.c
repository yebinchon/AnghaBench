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
struct txx9spi {int last_chipselect; int last_chipselect_val; } ;
struct spi_device {int mode; int chip_select; } ;

/* Variables and functions */
 int SPI_CS_HIGH ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 

__attribute__((used)) static void FUNC2(struct spi_device *spi, struct txx9spi *c,
		int on, unsigned int cs_delay)
{
	int val = (spi->mode & SPI_CS_HIGH) ? on : !on;

	if (on) {
		/* deselect the chip with cs_change hint in last transfer */
		if (c->last_chipselect >= 0)
			FUNC0(c->last_chipselect,
					!c->last_chipselect_val);
		c->last_chipselect = spi->chip_select;
		c->last_chipselect_val = val;
	} else {
		c->last_chipselect = -1;
		FUNC1(cs_delay);	/* CS Hold Time */
	}
	FUNC0(spi->chip_select, val);
	FUNC1(cs_delay);	/* CS Setup Time / CS Recovery Time */
}