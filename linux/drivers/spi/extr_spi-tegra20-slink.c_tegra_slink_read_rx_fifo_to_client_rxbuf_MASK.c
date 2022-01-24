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
typedef  int /*<<< orphan*/  u8 ;
typedef  unsigned int u32 ;
struct tegra_slink_data {int cur_rx_pos; unsigned int curr_dma_words; unsigned int bytes_per_word; scalar_t__ is_packed; } ;
struct spi_transfer {scalar_t__ rx_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  SLINK_RX_FIFO ; 
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  SLINK_STATUS2 ; 
 unsigned int FUNC1 (struct tegra_slink_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC2(
		struct tegra_slink_data *tspi, struct spi_transfer *t)
{
	unsigned rx_full_count;
	u32 fifo_status;
	unsigned i, count;
	unsigned int read_words = 0;
	unsigned len;
	u8 *rx_buf = (u8 *)t->rx_buf + tspi->cur_rx_pos;

	fifo_status = FUNC1(tspi, SLINK_STATUS2);
	rx_full_count = FUNC0(fifo_status);
	if (tspi->is_packed) {
		len = tspi->curr_dma_words * tspi->bytes_per_word;
		for (count = 0; count < rx_full_count; count++) {
			u32 x = FUNC1(tspi, SLINK_RX_FIFO);
			for (i = 0; len && (i < 4); i++, len--)
				*rx_buf++ = (x >> i*8) & 0xFF;
		}
		tspi->cur_rx_pos += tspi->curr_dma_words * tspi->bytes_per_word;
		read_words += tspi->curr_dma_words;
	} else {
		for (count = 0; count < rx_full_count; count++) {
			u32 x = FUNC1(tspi, SLINK_RX_FIFO);
			for (i = 0; (i < tspi->bytes_per_word); i++)
				*rx_buf++ = (x >> (i*8)) & 0xFF;
		}
		tspi->cur_rx_pos += rx_full_count * tspi->bytes_per_word;
		read_words += rx_full_count;
	}
	return read_words;
}