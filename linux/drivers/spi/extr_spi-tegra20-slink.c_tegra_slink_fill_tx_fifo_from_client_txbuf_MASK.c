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
struct tegra_slink_data {int cur_tx_pos; unsigned int words_per_32bit; unsigned int curr_dma_words; unsigned int bytes_per_word; scalar_t__ is_packed; } ;
struct spi_transfer {scalar_t__ tx_buf; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,int) ; 
 int /*<<< orphan*/  SLINK_STATUS2 ; 
 int /*<<< orphan*/  SLINK_TX_FIFO ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (unsigned int,unsigned int) ; 
 unsigned int FUNC3 (struct tegra_slink_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tegra_slink_data*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned FUNC5(
	struct tegra_slink_data *tspi, struct spi_transfer *t)
{
	unsigned nbytes;
	unsigned tx_empty_count;
	u32 fifo_status;
	unsigned max_n_32bit;
	unsigned i, count;
	unsigned int written_words;
	unsigned fifo_words_left;
	u8 *tx_buf = (u8 *)t->tx_buf + tspi->cur_tx_pos;

	fifo_status = FUNC3(tspi, SLINK_STATUS2);
	tx_empty_count = FUNC1(fifo_status);

	if (tspi->is_packed) {
		fifo_words_left = tx_empty_count * tspi->words_per_32bit;
		written_words = FUNC2(fifo_words_left, tspi->curr_dma_words);
		nbytes = written_words * tspi->bytes_per_word;
		max_n_32bit = FUNC0(nbytes, 4);
		for (count = 0; count < max_n_32bit; count++) {
			u32 x = 0;
			for (i = 0; (i < 4) && nbytes; i++, nbytes--)
				x |= (u32)(*tx_buf++) << (i * 8);
			FUNC4(tspi, x, SLINK_TX_FIFO);
		}
	} else {
		max_n_32bit = FUNC2(tspi->curr_dma_words,  tx_empty_count);
		written_words = max_n_32bit;
		nbytes = written_words * tspi->bytes_per_word;
		for (count = 0; count < max_n_32bit; count++) {
			u32 x = 0;
			for (i = 0; nbytes && (i < tspi->bytes_per_word);
							i++, nbytes--)
				x |= (u32)(*tx_buf++) << (i * 8);
			FUNC4(tspi, x, SLINK_TX_FIFO);
		}
	}
	tspi->cur_tx_pos += written_words * tspi->bytes_per_word;
	return written_words;
}