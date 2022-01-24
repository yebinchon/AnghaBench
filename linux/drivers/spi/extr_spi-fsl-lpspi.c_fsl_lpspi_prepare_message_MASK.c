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
struct spi_message {struct spi_device* spi; } ;
struct spi_device {size_t chip_select; int mode; } ;
struct spi_controller {int dummy; } ;
struct fsl_lpspi_data {int* chipselect; } ;

/* Variables and functions */
 int SPI_CS_HIGH ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int) ; 
 struct fsl_lpspi_data* FUNC2 (struct spi_controller*) ; 

__attribute__((used)) static int FUNC3(struct spi_controller *controller,
				     struct spi_message *msg)
{
	struct fsl_lpspi_data *fsl_lpspi =
					FUNC2(controller);
	struct spi_device *spi = msg->spi;
	int gpio = fsl_lpspi->chipselect[spi->chip_select];

	if (FUNC1(gpio))
		FUNC0(gpio, spi->mode & SPI_CS_HIGH ? 0 : 1);

	return 0;
}