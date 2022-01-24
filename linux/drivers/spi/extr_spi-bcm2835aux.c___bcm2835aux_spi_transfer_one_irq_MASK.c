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
struct spi_master {int dummy; } ;
struct spi_device {int dummy; } ;
struct bcm2835aux_spi {int* cntl; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCM2835_AUX_SPI_CNTL1 ; 
 int BCM2835_AUX_SPI_CNTL1_IDLE ; 
 int BCM2835_AUX_SPI_CNTL1_TXEMPTY ; 
 int /*<<< orphan*/  FUNC0 (struct bcm2835aux_spi*,int /*<<< orphan*/ ,int) ; 
 struct bcm2835aux_spi* FUNC1 (struct spi_master*) ; 

__attribute__((used)) static int FUNC2(struct spi_master *master,
					     struct spi_device *spi,
					     struct spi_transfer *tfr)
{
	struct bcm2835aux_spi *bs = FUNC1(master);

	/* enable interrupts */
	FUNC0(bs, BCM2835_AUX_SPI_CNTL1, bs->cntl[1] |
		BCM2835_AUX_SPI_CNTL1_TXEMPTY |
		BCM2835_AUX_SPI_CNTL1_IDLE);

	/* and wait for finish... */
	return 1;
}