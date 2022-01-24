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
struct sun4i_spi {int dummy; } ;
struct spi_device {int mode; int /*<<< orphan*/  chip_select; int /*<<< orphan*/  master; } ;

/* Variables and functions */
 int SPI_CS_HIGH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUN4I_CTL_CS_ACTIVE_LOW ; 
 int /*<<< orphan*/  SUN4I_CTL_CS_LEVEL ; 
 int /*<<< orphan*/  SUN4I_CTL_CS_MANUAL ; 
 int /*<<< orphan*/  SUN4I_CTL_CS_MASK ; 
 int /*<<< orphan*/  SUN4I_CTL_REG ; 
 struct sun4i_spi* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sun4i_spi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sun4i_spi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct spi_device *spi, bool enable)
{
	struct sun4i_spi *sspi = FUNC1(spi->master);
	u32 reg;

	reg = FUNC2(sspi, SUN4I_CTL_REG);

	reg &= ~SUN4I_CTL_CS_MASK;
	reg |= FUNC0(spi->chip_select);

	/* We want to control the chip select manually */
	reg |= SUN4I_CTL_CS_MANUAL;

	if (enable)
		reg |= SUN4I_CTL_CS_LEVEL;
	else
		reg &= ~SUN4I_CTL_CS_LEVEL;

	/*
	 * Even though this looks irrelevant since we are supposed to
	 * be controlling the chip select manually, this bit also
	 * controls the levels of the chip select for inactive
	 * devices.
	 *
	 * If we don't set it, the chip select level will go low by
	 * default when the device is idle, which is not really
	 * expected in the common case where the chip select is active
	 * low.
	 */
	if (spi->mode & SPI_CS_HIGH)
		reg &= ~SUN4I_CTL_CS_ACTIVE_LOW;
	else
		reg |= SUN4I_CTL_CS_ACTIVE_LOW;

	FUNC3(sspi, SUN4I_CTL_REG, reg);
}