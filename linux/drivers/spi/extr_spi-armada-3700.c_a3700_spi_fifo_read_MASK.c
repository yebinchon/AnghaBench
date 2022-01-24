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
struct a3700_spi {int buf_len; int* rx_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  A3700_SPI_DATA_IN_REG ; 
 int /*<<< orphan*/  FUNC0 (struct a3700_spi*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,int) ; 
 int FUNC2 (struct a3700_spi*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct a3700_spi *a3700_spi)
{
	u32 val;

	while (!FUNC0(a3700_spi) && a3700_spi->buf_len) {
		val = FUNC2(a3700_spi, A3700_SPI_DATA_IN_REG);
		if (a3700_spi->buf_len >= 4) {

			FUNC1(a3700_spi->rx_buf, &val, 4);

			a3700_spi->buf_len -= 4;
			a3700_spi->rx_buf += 4;
		} else {
			/*
			 * When remain bytes is not larger than 4, we should
			 * avoid memory overwriting and just write the left rx
			 * buffer bytes.
			 */
			while (a3700_spi->buf_len) {
				*a3700_spi->rx_buf = val & 0xff;
				val >>= 8;

				a3700_spi->buf_len--;
				a3700_spi->rx_buf++;
			}
		}
	}

	return 0;
}