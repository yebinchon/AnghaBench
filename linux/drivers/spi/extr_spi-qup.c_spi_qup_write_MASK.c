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
typedef  int u32 ;
struct spi_qup {scalar_t__ mode; int out_blk_sz; scalar_t__ base; int /*<<< orphan*/  w_size; scalar_t__ tx_bytes; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ QUP_IO_M_MODE_BLOCK ; 
 scalar_t__ QUP_OPERATIONAL ; 
 int /*<<< orphan*/  QUP_OP_OUT_BLOCK_WRITE_REQ ; 
 int /*<<< orphan*/  QUP_OP_OUT_FIFO_FULL ; 
 int /*<<< orphan*/  QUP_OP_OUT_SERVICE_FLAG ; 
 scalar_t__ FUNC1 (struct spi_qup*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct spi_qup*) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_qup*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct spi_qup *controller)
{
	bool is_block_mode = controller->mode == QUP_IO_M_MODE_BLOCK;
	u32 remainder, words_per_block, num_words;

	remainder = FUNC0(FUNC2(controller) - controller->tx_bytes,
				 controller->w_size);
	words_per_block = controller->out_blk_sz >> 2;

	do {
		/* ACK by clearing service flag */
		FUNC4(QUP_OP_OUT_SERVICE_FLAG,
			       controller->base + QUP_OPERATIONAL);

		/* make sure the interrupt is valid */
		if (!remainder)
			return;

		if (is_block_mode) {
			num_words = (remainder > words_per_block) ?
				words_per_block : remainder;
		} else {
			if (FUNC1(controller,
						QUP_OP_OUT_FIFO_FULL))
				break;

			num_words = 1;
		}

		FUNC3(controller, num_words);

		remainder -= num_words;

		/* if block mode, check to see if next block is available */
		if (is_block_mode && !FUNC1(controller,
					QUP_OP_OUT_BLOCK_WRITE_REQ))
			break;

	} while (remainder);
}