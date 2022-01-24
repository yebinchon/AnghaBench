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
typedef  int /*<<< orphan*/  u32 ;
struct a3700_spi {scalar_t__ tx_buf; scalar_t__ buf_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  A3700_SPI_DATA_OUT_REG ; 
 int /*<<< orphan*/  FUNC0 (struct a3700_spi*) ; 
 int /*<<< orphan*/  FUNC1 (struct a3700_spi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct a3700_spi *a3700_spi)
{
	u32 val;

	while (!FUNC0(a3700_spi) && a3700_spi->buf_len) {
		val = *(u32 *)a3700_spi->tx_buf;
		FUNC1(a3700_spi, A3700_SPI_DATA_OUT_REG, val);
		a3700_spi->buf_len -= 4;
		a3700_spi->tx_buf += 4;
	}

	return 0;
}