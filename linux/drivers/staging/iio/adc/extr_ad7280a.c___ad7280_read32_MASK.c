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
struct spi_transfer {int len; int /*<<< orphan*/ * rx_buf; int /*<<< orphan*/ * tx_buf; } ;
struct ad7280_state {int /*<<< orphan*/ * buf; int /*<<< orphan*/  spi; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD7280A_READ_TXVAL ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct spi_transfer*,int) ; 

__attribute__((used)) static int FUNC3(struct ad7280_state *st, unsigned int *val)
{
	int ret;
	struct spi_transfer t = {
		.tx_buf	= &st->buf[0],
		.rx_buf = &st->buf[1],
		.len = 4,
	};

	st->buf[0] = FUNC1(AD7280A_READ_TXVAL);

	ret = FUNC2(st->spi, &t, 1);
	if (ret)
		return ret;

	*val = FUNC0(st->buf[1]);

	return 0;
}