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
struct ifx_spi_device {unsigned char* tx_buffer; int spi_more; int /*<<< orphan*/  (* swap_buf ) (unsigned char*,int,unsigned char*) ;int /*<<< orphan*/  tty_port; int /*<<< orphan*/  fifo_lock; int /*<<< orphan*/  tx_fifo; int /*<<< orphan*/  spi_slave_cts; } ;

/* Variables and functions */
 int IFX_SPI_HEADER_OVERHEAD ; 
 int /*<<< orphan*/  IFX_SPI_PAYLOAD_SIZE ; 
 size_t IFX_SPI_TRANSFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,unsigned char*,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct ifx_spi_device *ifx_dev)
{
	int temp_count;
	int queue_length;
	int tx_count;
	unsigned char *tx_buffer;

	tx_buffer = ifx_dev->tx_buffer;

	/* make room for required SPI header */
	tx_buffer += IFX_SPI_HEADER_OVERHEAD;
	tx_count = IFX_SPI_HEADER_OVERHEAD;

	/* clear to signal no more data if this turns out to be the
	 * last buffer sent in a sequence */
	ifx_dev->spi_more = 0;

	/* if modem cts is set, just send empty buffer */
	if (!ifx_dev->spi_slave_cts) {
		/* see if there's tx data */
		queue_length = FUNC1(&ifx_dev->tx_fifo);
		if (queue_length != 0) {
			/* data to mux -- see if there's room for it */
			temp_count = FUNC3(queue_length, IFX_SPI_PAYLOAD_SIZE);
			temp_count = FUNC2(&ifx_dev->tx_fifo,
					tx_buffer, temp_count,
					&ifx_dev->fifo_lock);

			/* update buffer pointer and data count in message */
			tx_buffer += temp_count;
			tx_count += temp_count;
			if (temp_count == queue_length)
				/* poke port to get more data */
				FUNC5(&ifx_dev->tty_port);
			else /* more data in port, use next SPI message */
				ifx_dev->spi_more = 1;
		}
	}
	/* have data and info for header -- set up SPI header in buffer */
	/* spi header needs payload size, not entire buffer size */
	FUNC0(ifx_dev->tx_buffer,
					tx_count-IFX_SPI_HEADER_OVERHEAD,
					ifx_dev->spi_more);
	/* swap actual data in the buffer */
	ifx_dev->swap_buf((ifx_dev->tx_buffer), tx_count,
		&ifx_dev->tx_buffer[IFX_SPI_TRANSFER_SIZE]);
	return tx_count;
}