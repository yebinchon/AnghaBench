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
struct spi_master {int dummy; } ;
struct geni_se {scalar_t__ base; } ;
struct spi_geni_master {scalar_t__ cur_mcmd; int /*<<< orphan*/  lock; int /*<<< orphan*/  xfer_done; int /*<<< orphan*/  cur_bits_per_word; scalar_t__ rx_rem_bytes; int /*<<< orphan*/  dev; scalar_t__ tx_rem_bytes; struct geni_se se; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ CMD_CS ; 
 scalar_t__ CMD_NONE ; 
 scalar_t__ CMD_XFER ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int M_CMD_ABORT_EN ; 
 int M_CMD_CANCEL_EN ; 
 int M_CMD_DONE_EN ; 
 int M_RX_FIFO_LAST_EN ; 
 int M_RX_FIFO_WATERMARK_EN ; 
 int M_TX_FIFO_WATERMARK_EN ; 
 scalar_t__ SE_GENI_M_IRQ_CLEAR ; 
 scalar_t__ SE_GENI_M_IRQ_STATUS ; 
 scalar_t__ SE_GENI_TX_WATERMARK_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_geni_master*) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_geni_master*) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct spi_master*) ; 
 struct spi_geni_master* FUNC6 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *data)
{
	struct spi_master *spi = data;
	struct spi_geni_master *mas = FUNC6(spi);
	struct geni_se *se = &mas->se;
	u32 m_irq;
	unsigned long flags;

	if (mas->cur_mcmd == CMD_NONE)
		return IRQ_NONE;

	FUNC7(&mas->lock, flags);
	m_irq = FUNC4(se->base + SE_GENI_M_IRQ_STATUS);

	if ((m_irq & M_RX_FIFO_WATERMARK_EN) || (m_irq & M_RX_FIFO_LAST_EN))
		FUNC2(mas);

	if (m_irq & M_TX_FIFO_WATERMARK_EN)
		FUNC3(mas);

	if (m_irq & M_CMD_DONE_EN) {
		if (mas->cur_mcmd == CMD_XFER)
			FUNC5(spi);
		else if (mas->cur_mcmd == CMD_CS)
			FUNC0(&mas->xfer_done);
		mas->cur_mcmd = CMD_NONE;
		/*
		 * If this happens, then a CMD_DONE came before all the Tx
		 * buffer bytes were sent out. This is unusual, log this
		 * condition and disable the WM interrupt to prevent the
		 * system from stalling due an interrupt storm.
		 * If this happens when all Rx bytes haven't been received, log
		 * the condition.
		 * The only known time this can happen is if bits_per_word != 8
		 * and some registers that expect xfer lengths in num spi_words
		 * weren't written correctly.
		 */
		if (mas->tx_rem_bytes) {
			FUNC9(0, se->base + SE_GENI_TX_WATERMARK_REG);
			FUNC1(mas->dev, "Premature done. tx_rem = %d bpw%d\n",
				mas->tx_rem_bytes, mas->cur_bits_per_word);
		}
		if (mas->rx_rem_bytes)
			FUNC1(mas->dev, "Premature done. rx_rem = %d bpw%d\n",
				mas->rx_rem_bytes, mas->cur_bits_per_word);
	}

	if ((m_irq & M_CMD_CANCEL_EN) || (m_irq & M_CMD_ABORT_EN)) {
		mas->cur_mcmd = CMD_NONE;
		FUNC0(&mas->xfer_done);
	}

	FUNC9(m_irq, se->base + SE_GENI_M_IRQ_CLEAR);
	FUNC8(&mas->lock, flags);
	return IRQ_HANDLED;
}