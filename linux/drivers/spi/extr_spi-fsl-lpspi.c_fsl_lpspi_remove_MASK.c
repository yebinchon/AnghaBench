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
struct spi_controller {int dummy; } ;
struct platform_device {int dummy; } ;
struct fsl_lpspi_data {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct spi_controller* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct fsl_lpspi_data* FUNC2 (struct spi_controller*) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_controller*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct spi_controller *controller = FUNC0(pdev);
	struct fsl_lpspi_data *fsl_lpspi =
				FUNC2(controller);

	FUNC1(fsl_lpspi->dev);

	FUNC3(controller);

	return 0;
}