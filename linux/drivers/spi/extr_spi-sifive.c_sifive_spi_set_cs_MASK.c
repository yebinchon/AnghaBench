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
struct spi_device {int mode; int /*<<< orphan*/  master; } ;
struct sifive_spi {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIFIVE_SPI_CSMODE_MODE_AUTO ; 
 int /*<<< orphan*/  SIFIVE_SPI_CSMODE_MODE_HOLD ; 
 int /*<<< orphan*/  SIFIVE_SPI_REG_CSMODE ; 
 int SPI_CS_HIGH ; 
 int /*<<< orphan*/  FUNC0 (struct sifive_spi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sifive_spi* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct spi_device *device, bool is_high)
{
	struct sifive_spi *spi = FUNC1(device->master);

	/* Reverse polarity is handled by SCMR/CPOL. Not inverted CS. */
	if (device->mode & SPI_CS_HIGH)
		is_high = !is_high;

	FUNC0(spi, SIFIVE_SPI_REG_CSMODE, is_high ?
			 SIFIVE_SPI_CSMODE_MODE_AUTO :
			 SIFIVE_SPI_CSMODE_MODE_HOLD);
}