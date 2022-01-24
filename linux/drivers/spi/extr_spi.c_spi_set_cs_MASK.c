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
struct spi_device {int mode; TYPE_1__* controller; int /*<<< orphan*/  cs_gpio; scalar_t__ cs_gpiod; } ;
struct TYPE_2__ {int flags; int /*<<< orphan*/  (* set_cs ) (struct spi_device*,int) ;} ;

/* Variables and functions */
 int SPI_CS_HIGH ; 
 int SPI_MASTER_GPIO_SS ; 
 int SPI_NO_CS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_device*,int) ; 

__attribute__((used)) static void FUNC5(struct spi_device *spi, bool enable)
{
	if (spi->mode & SPI_CS_HIGH)
		enable = !enable;

	if (spi->cs_gpiod || FUNC0(spi->cs_gpio)) {
		/*
		 * Honour the SPI_NO_CS flag and invert the enable line, as
		 * active low is default for SPI. Execution paths that handle
		 * polarity inversion in gpiolib (such as device tree) will
		 * enforce active high using the SPI_CS_HIGH resulting in a
		 * double inversion through the code above.
		 */
		if (!(spi->mode & SPI_NO_CS)) {
			if (spi->cs_gpiod)
				FUNC2(spi->cs_gpiod,
							 !enable);
			else
				FUNC1(spi->cs_gpio, !enable);
		}
		/* Some SPI masters need both GPIO CS & slave_select */
		if ((spi->controller->flags & SPI_MASTER_GPIO_SS) &&
		    spi->controller->set_cs)
			spi->controller->set_cs(spi, !enable);
	} else if (spi->controller->set_cs) {
		spi->controller->set_cs(spi, !enable);
	}
}