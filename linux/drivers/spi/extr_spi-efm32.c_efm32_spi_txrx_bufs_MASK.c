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
struct spi_transfer {int len; int /*<<< orphan*/  bits_per_word; int /*<<< orphan*/ * rx_buf; int /*<<< orphan*/  tx_buf; } ;
struct spi_device {int /*<<< orphan*/  master; } ;
struct efm32_spi_ddata {int tx_len; int rx_len; int /*<<< orphan*/  lock; int /*<<< orphan*/ * rx_buf; int /*<<< orphan*/  tx_buf; int /*<<< orphan*/  done; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int EBUSY ; 
 int /*<<< orphan*/  REG_IEN ; 
 int REG_IF_RXDATAV ; 
 int REG_IF_TXBL ; 
 int /*<<< orphan*/  FUNC1 (struct efm32_spi_ddata*) ; 
 int /*<<< orphan*/  FUNC2 (struct efm32_spi_ddata*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct efm32_spi_ddata* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct spi_device *spi, struct spi_transfer *t)
{
	struct efm32_spi_ddata *ddata = FUNC5(spi->master);
	int ret = -EBUSY;

	FUNC6(&ddata->lock);

	if (ddata->tx_buf || ddata->rx_buf)
		goto out_unlock;

	ddata->tx_buf = t->tx_buf;
	ddata->rx_buf = t->rx_buf;
	ddata->tx_len = ddata->rx_len =
		t->len * FUNC0(t->bits_per_word, 8);

	FUNC1(ddata);

	FUNC4(&ddata->done);

	FUNC2(ddata, REG_IF_TXBL | REG_IF_RXDATAV, REG_IEN);

	FUNC7(&ddata->lock);

	FUNC8(&ddata->done);

	FUNC6(&ddata->lock);

	ret = t->len - FUNC3(ddata->tx_len, ddata->rx_len);

	FUNC2(ddata, 0, REG_IEN);
	ddata->tx_buf = *(ddata->rx_buf = NULL);

out_unlock:
	FUNC7(&ddata->lock);

	return ret;
}