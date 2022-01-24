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
struct spi_transfer {void* tx_buf; unsigned int len; int speed_hz; void* rx_buf; } ;
struct spi_master {int dummy; } ;
struct spi_device {int /*<<< orphan*/  master; } ;
struct img_spfi {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 unsigned long jiffies ; 
 unsigned long FUNC2 (int) ; 
 unsigned int FUNC3 (struct img_spfi*,void*,unsigned int) ; 
 unsigned int FUNC4 (struct img_spfi*,void*,unsigned int) ; 
 unsigned int FUNC5 (struct img_spfi*,void const*,unsigned int) ; 
 unsigned int FUNC6 (struct img_spfi*,void const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct img_spfi*) ; 
 int FUNC8 (struct img_spfi*) ; 
 struct img_spfi* FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC11(struct spi_master *master,
			       struct spi_device *spi,
			       struct spi_transfer *xfer)
{
	struct img_spfi *spfi = FUNC9(spi->master);
	unsigned int tx_bytes = 0, rx_bytes = 0;
	const void *tx_buf = xfer->tx_buf;
	void *rx_buf = xfer->rx_buf;
	unsigned long timeout;
	int ret;

	if (tx_buf)
		tx_bytes = xfer->len;
	if (rx_buf)
		rx_bytes = xfer->len;

	FUNC7(spfi);

	timeout = jiffies +
		FUNC2(xfer->len * 8 * 1000 / xfer->speed_hz + 100);
	while ((tx_bytes > 0 || rx_bytes > 0) &&
	       FUNC10(jiffies, timeout)) {
		unsigned int tx_count, rx_count;

		if (tx_bytes >= 4)
			tx_count = FUNC5(spfi, tx_buf, tx_bytes);
		else
			tx_count = FUNC6(spfi, tx_buf, tx_bytes);

		if (rx_bytes >= 4)
			rx_count = FUNC3(spfi, rx_buf, rx_bytes);
		else
			rx_count = FUNC4(spfi, rx_buf, rx_bytes);

		tx_buf += tx_count;
		rx_buf += rx_count;
		tx_bytes -= tx_count;
		rx_bytes -= rx_count;

		FUNC0();
	}

	if (rx_bytes > 0 || tx_bytes > 0) {
		FUNC1(spfi->dev, "PIO transfer timed out\n");
		return -ETIMEDOUT;
	}

	ret = FUNC8(spfi);
	if (ret < 0)
		return ret;

	return 0;
}