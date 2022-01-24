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
struct spi_transfer {int /*<<< orphan*/  len; int /*<<< orphan*/  rx_buf; int /*<<< orphan*/  tx_buf; } ;
struct rspi_data {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (struct rspi_data*) ; 
 int FUNC1 (struct rspi_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rspi_data*,struct spi_transfer*) ; 

__attribute__((used)) static int FUNC3(struct rspi_data *rspi,
				struct spi_transfer *xfer)
{
	int ret;

	FUNC0(rspi);

	ret = FUNC2(rspi, xfer);
	if (ret != -EAGAIN)
		return ret;

	return FUNC1(rspi, xfer->tx_buf,
					    xfer->rx_buf, xfer->len);
}