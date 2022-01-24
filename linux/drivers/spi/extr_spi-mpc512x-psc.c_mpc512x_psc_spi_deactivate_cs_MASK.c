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
struct spi_device {int mode; int /*<<< orphan*/  cs_gpio; int /*<<< orphan*/  master; } ;
struct mpc512x_psc_spi {int /*<<< orphan*/  (* cs_control ) (struct spi_device*,int) ;} ;

/* Variables and functions */
 int SPI_CS_HIGH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct mpc512x_psc_spi* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_device*,int) ; 

__attribute__((used)) static void FUNC3(struct spi_device *spi)
{
	struct mpc512x_psc_spi *mps = FUNC1(spi->master);

	if (mps->cs_control && FUNC0(spi->cs_gpio))
		mps->cs_control(spi, (spi->mode & SPI_CS_HIGH) ? 0 : 1);

}