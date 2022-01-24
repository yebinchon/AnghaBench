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
typedef  int /*<<< orphan*/  test ;
struct spi_test {int iterate_transfer_mask; int transfer_count; TYPE_1__* transfers; int /*<<< orphan*/  description; } ;
struct spi_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {size_t len; scalar_t__ rx_buf; scalar_t__ tx_buf; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (struct spi_device*,struct spi_test*,void*,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,size_t,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_test*,struct spi_test const*,int) ; 

__attribute__((used)) static int FUNC5(struct spi_device *spi,
			     const struct spi_test *testtemplate,
			     void *tx, void *rx,
			     size_t len,
			     size_t tx_off,
			     size_t rx_off
	)
{
	struct spi_test test;
	int i, tx_count, rx_count;

	/* copy the test template to test */
	FUNC4(&test, testtemplate, sizeof(test));

	/* if iterate_transfer_mask is not set,
	 * then set it to first transfer only
	 */
	if (!(test.iterate_transfer_mask & (FUNC0(test.transfer_count) - 1)))
		test.iterate_transfer_mask = 1;

	/* count number of transfers with tx/rx_buf != NULL */
	rx_count = tx_count = 0;
	for (i = 0; i < test.transfer_count; i++) {
		if (test.transfers[i].tx_buf)
			tx_count++;
		if (test.transfers[i].rx_buf)
			rx_count++;
	}

	/* in some iteration cases warn and exit early,
	 * as there is nothing to do, that has not been tested already...
	 */
	if (tx_off && (!tx_count)) {
		FUNC3(&spi->dev,
			      "%s: iterate_tx_off configured with tx_buf==NULL - ignoring\n",
			      test.description);
		return 0;
	}
	if (rx_off && (!rx_count)) {
		FUNC3(&spi->dev,
			      "%s: iterate_rx_off configured with rx_buf==NULL - ignoring\n",
			      test.description);
		return 0;
	}

	/* write out info */
	if (!(len || tx_off || rx_off)) {
		FUNC2(&spi->dev, "Running test %s\n", test.description);
	} else {
		FUNC2(&spi->dev,
			 "  with iteration values: len = %zu, tx_off = %zu, rx_off = %zu\n",
			 len, tx_off, rx_off);
	}

	/* update in the values from iteration values */
	for (i = 0; i < test.transfer_count; i++) {
		/* only when bit in transfer mask is set */
		if (!(test.iterate_transfer_mask & FUNC0(i)))
			continue;
		test.transfers[i].len = len;
		if (test.transfers[i].tx_buf)
			test.transfers[i].tx_buf += tx_off;
		if (test.transfers[i].tx_buf)
			test.transfers[i].rx_buf += rx_off;
	}

	/* and execute */
	return FUNC1(spi, &test, tx, rx);
}