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
typedef  int u32 ;
struct bcm2835aux_spi {int pending; scalar_t__ tx_len; scalar_t__ rx_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCM2835_AUX_SPI_STAT ; 
 int BCM2835_AUX_SPI_STAT_RX_LVL ; 
 int BCM2835_AUX_SPI_STAT_TX_FULL ; 
 int FUNC0 (struct bcm2835aux_spi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm2835aux_spi*) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm2835aux_spi*) ; 

__attribute__((used)) static void FUNC3(struct bcm2835aux_spi *bs)
{
	u32 stat = FUNC0(bs, BCM2835_AUX_SPI_STAT);

	/* check if we have data to read */
	for (; bs->rx_len && (stat & BCM2835_AUX_SPI_STAT_RX_LVL);
	     stat = FUNC0(bs, BCM2835_AUX_SPI_STAT))
		FUNC1(bs);

	/* check if we have data to write */
	while (bs->tx_len &&
	       (bs->pending < 12) &&
	       (!(FUNC0(bs, BCM2835_AUX_SPI_STAT) &
		  BCM2835_AUX_SPI_STAT_TX_FULL))) {
		FUNC2(bs);
	}
}