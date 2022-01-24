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
struct spi_transfer {unsigned int len; scalar_t__ rx_buf; scalar_t__ tx_buf; } ;
struct spi_engine_program {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int) ; 
 unsigned int SPI_ENGINE_TRANSFER_READ ; 
 unsigned int SPI_ENGINE_TRANSFER_WRITE ; 
 unsigned int FUNC1 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_engine_program*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct spi_engine_program *p, bool dry,
	struct spi_transfer *xfer)
{
	unsigned int len = xfer->len;

	while (len) {
		unsigned int n = FUNC1(len, 256U);
		unsigned int flags = 0;

		if (xfer->tx_buf)
			flags |= SPI_ENGINE_TRANSFER_WRITE;
		if (xfer->rx_buf)
			flags |= SPI_ENGINE_TRANSFER_READ;

		FUNC2(p, dry,
			FUNC0(flags, n - 1));
		len -= n;
	}
}