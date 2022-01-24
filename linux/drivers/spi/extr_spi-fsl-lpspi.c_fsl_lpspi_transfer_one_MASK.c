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
struct spi_transfer {int dummy; } ;
struct spi_device {int dummy; } ;
struct spi_controller {int dummy; } ;
struct fsl_lpspi_data {int is_first_byte; scalar_t__ usedma; } ;

/* Variables and functions */
 int FUNC0 (struct spi_controller*,struct fsl_lpspi_data*,struct spi_transfer*) ; 
 int FUNC1 (struct spi_controller*,struct spi_transfer*) ; 
 int /*<<< orphan*/  FUNC2 (struct fsl_lpspi_data*) ; 
 int FUNC3 (struct spi_controller*,struct spi_device*,struct spi_transfer*) ; 
 struct fsl_lpspi_data* FUNC4 (struct spi_controller*) ; 

__attribute__((used)) static int FUNC5(struct spi_controller *controller,
				  struct spi_device *spi,
				  struct spi_transfer *t)
{
	struct fsl_lpspi_data *fsl_lpspi =
					FUNC4(controller);
	int ret;

	fsl_lpspi->is_first_byte = true;
	ret = FUNC3(controller, spi, t);
	if (ret < 0)
		return ret;

	FUNC2(fsl_lpspi);
	fsl_lpspi->is_first_byte = false;

	if (fsl_lpspi->usedma)
		ret = FUNC0(controller, fsl_lpspi, t);
	else
		ret = FUNC1(controller, t);
	if (ret < 0)
		return ret;

	return 0;
}