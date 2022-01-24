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
struct spi_master {scalar_t__ (* can_dma ) (struct spi_master*,struct spi_device*,struct spi_transfer*) ;} ;
struct spi_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct spi_master*,struct spi_device*,struct spi_transfer*) ; 
 int FUNC1 (struct spi_master*,struct spi_device*,struct spi_transfer*) ; 
 scalar_t__ FUNC2 (struct spi_master*,struct spi_device*,struct spi_transfer*) ; 

__attribute__((used)) static int FUNC3(struct spi_master *master,
				struct spi_device *spi,
				struct spi_transfer *xfer)
{
	if (master->can_dma(master, spi, xfer))
		return FUNC0(master, spi, xfer);
	else
		return FUNC1(master, spi, xfer);
}