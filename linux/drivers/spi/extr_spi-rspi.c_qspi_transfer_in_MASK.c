#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct spi_transfer {unsigned int len; int /*<<< orphan*/  rx_sg; int /*<<< orphan*/ * rx_buf; } ;
struct rspi_data {TYPE_1__* ctlr; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; scalar_t__ can_dma; } ;

/* Variables and functions */
 int EAGAIN ; 
 scalar_t__ FUNC0 (struct rspi_data*,struct spi_transfer*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 unsigned int FUNC2 (struct rspi_data*,unsigned int) ; 
 int FUNC3 (struct rspi_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct rspi_data*) ; 
 int FUNC5 (struct rspi_data*) ; 

__attribute__((used)) static int FUNC6(struct rspi_data *rspi, struct spi_transfer *xfer)
{
	u8 *rx = xfer->rx_buf;
	unsigned int n = xfer->len;
	unsigned int i, len;
	int ret;

	if (rspi->ctlr->can_dma && FUNC0(rspi, xfer)) {
		int ret = FUNC3(rspi, NULL, &xfer->rx_sg);
		if (ret != -EAGAIN)
			return ret;
	}

	while (n > 0) {
		len = FUNC2(rspi, n);
		ret = FUNC5(rspi);
		if (ret < 0) {
			FUNC1(&rspi->ctlr->dev, "receive timeout\n");
			return ret;
		}
		for (i = 0; i < len; i++)
			*rx++ = FUNC4(rspi);

		n -= len;
	}

	return 0;
}