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
struct spi_transfer {int len; } ;
struct spi_master {int dummy; } ;
struct spi_device {int dummy; } ;
struct s3c64xx_spi_driver_data {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct s3c64xx_spi_driver_data*) ; 
 struct s3c64xx_spi_driver_data* FUNC1 (struct spi_master*) ; 

__attribute__((used)) static bool FUNC2(struct spi_master *master,
				struct spi_device *spi,
				struct spi_transfer *xfer)
{
	struct s3c64xx_spi_driver_data *sdd = FUNC1(master);

	return xfer->len > (FUNC0(sdd) >> 1) + 1;
}