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
struct at91_usart_spi {scalar_t__ use_dma; } ;

/* Variables and functions */
 scalar_t__ US_DMA_MIN_BYTES ; 
 struct at91_usart_spi* FUNC0 (struct spi_controller*) ; 

__attribute__((used)) static bool FUNC1(struct spi_controller *ctrl,
				   struct spi_device *spi,
				   struct spi_transfer *xfer)
{
	struct at91_usart_spi *aus = FUNC0(ctrl);

	return aus->use_dma && xfer->len >= US_DMA_MIN_BYTES;
}