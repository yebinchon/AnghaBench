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
struct spi_device {int /*<<< orphan*/  master; } ;
struct bcm63xx_spi {size_t fifo_size; } ;

/* Variables and functions */
 struct bcm63xx_spi* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t FUNC1(struct spi_device *spi)
{
	struct bcm63xx_spi *bs = FUNC0(spi->master);

	return bs->fifo_size;
}