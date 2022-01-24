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
struct spi_transfer {int dummy; } ;
struct spi_imx_data {scalar_t__ usedma; scalar_t__ slave_mode; scalar_t__ base; TYPE_1__* devtype_data; } ;
struct spi_device {int /*<<< orphan*/  master; } ;
struct TYPE_2__ {scalar_t__ (* rx_available ) (struct spi_imx_data*) ;} ;

/* Variables and functions */
 scalar_t__ MXC_CSPIRXDATA ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (struct spi_imx_data*,struct spi_transfer*) ; 
 int FUNC2 (struct spi_device*,struct spi_transfer*) ; 
 int FUNC3 (struct spi_device*,struct spi_transfer*) ; 
 struct spi_imx_data* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct spi_imx_data*) ; 

__attribute__((used)) static int FUNC6(struct spi_device *spi,
				struct spi_transfer *transfer)
{
	struct spi_imx_data *spi_imx = FUNC4(spi->master);

	/* flush rxfifo before transfer */
	while (spi_imx->devtype_data->rx_available(spi_imx))
		FUNC0(spi_imx->base + MXC_CSPIRXDATA);

	if (spi_imx->slave_mode)
		return FUNC3(spi, transfer);

	if (spi_imx->usedma)
		return FUNC1(spi_imx, transfer);
	else
		return FUNC2(spi, transfer);
}