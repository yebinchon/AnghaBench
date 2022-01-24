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
struct spi_transfer {scalar_t__ len; } ;
struct spi_device {int dummy; } ;
struct spi_controller {int dummy; } ;
struct chip_data {scalar_t__ dma_burst_size; scalar_t__ enable_dma; } ;

/* Variables and functions */
 scalar_t__ MAX_DMA_LEN ; 
 struct chip_data* FUNC0 (struct spi_device*) ; 

__attribute__((used)) static bool FUNC1(struct spi_controller *controller,
			       struct spi_device *spi,
			       struct spi_transfer *xfer)
{
	struct chip_data *chip = FUNC0(spi);

	return chip->enable_dma &&
	       xfer->len <= MAX_DMA_LEN &&
	       xfer->len >= chip->dma_burst_size;
}