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
struct rspi_data {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct rspi_data*,struct spi_transfer*) ; 
 struct rspi_data* FUNC1 (struct spi_controller*) ; 

__attribute__((used)) static bool FUNC2(struct spi_controller *ctlr, struct spi_device *spi,
			 struct spi_transfer *xfer)
{
	struct rspi_data *rspi = FUNC1(ctlr);

	return FUNC0(rspi, xfer);
}