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
typedef  scalar_t__ u32 ;
struct bcm2835_spi {int tx_len; int tx_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCM2835_SPI_FIFO ; 
 int /*<<< orphan*/  FUNC0 (struct bcm2835_spi*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int,int) ; 
 int FUNC2 (int,int) ; 

__attribute__((used)) static inline void FUNC3(struct bcm2835_spi *bs, int count)
{
	u32 val;
	int len;

	bs->tx_len -= count;

	while (count > 0) {
		if (bs->tx_buf) {
			len = FUNC2(count, 4);
			FUNC1(&val, bs->tx_buf, len);
			bs->tx_buf += len;
		} else {
			val = 0;
		}
		FUNC0(bs, BCM2835_SPI_FIFO, val);
		count -= 4;
	}
}