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
typedef  int /*<<< orphan*/  x ;
typedef  void u8 ;
struct spi_transfer {unsigned int len; void const* rx_buf; void* tx_buf; } ;
struct spi_message {int dummy; } ;
struct spi_device {int dummy; } ;
typedef  int /*<<< orphan*/  DEFINE_MUTEX ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 unsigned int SPI_BUFSIZ ; 
 void* buf ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (void*,void const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_transfer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC8 (struct spi_message*) ; 
 int FUNC9 (struct spi_device*,struct spi_message*) ; 

int FUNC10(struct spi_device *spi,
		const void *txbuf, unsigned n_tx,
		void *rxbuf, unsigned n_rx)
{
	static DEFINE_MUTEX(lock);

	int			status;
	struct spi_message	message;
	struct spi_transfer	x[2];
	u8			*local_buf;

	/* Use preallocated DMA-safe buffer if we can.  We can't avoid
	 * copying here, (as a pure convenience thing), but we can
	 * keep heap costs out of the hot path unless someone else is
	 * using the pre-allocated buffer or the transfer is too large.
	 */
	if ((n_tx + n_rx) > SPI_BUFSIZ || !FUNC5(&lock)) {
		local_buf = FUNC1(FUNC2((unsigned)SPI_BUFSIZ, n_tx + n_rx),
				    GFP_KERNEL | GFP_DMA);
		if (!local_buf)
			return -ENOMEM;
	} else {
		local_buf = buf;
	}

	FUNC8(&message);
	FUNC4(x, 0, sizeof(x));
	if (n_tx) {
		x[0].len = n_tx;
		FUNC7(&x[0], &message);
	}
	if (n_rx) {
		x[1].len = n_rx;
		FUNC7(&x[1], &message);
	}

	FUNC3(local_buf, txbuf, n_tx);
	x[0].tx_buf = local_buf;
	x[1].rx_buf = local_buf + n_tx;

	/* do the i/o */
	status = FUNC9(spi, &message);
	if (status == 0)
		FUNC3(rxbuf, x[1].rx_buf, n_rx);

	if (x[0].tx_buf == buf)
		FUNC6(&lock);
	else
		FUNC0(local_buf);

	return status;
}