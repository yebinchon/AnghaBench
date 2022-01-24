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
typedef  int u32 ;
struct spi_transfer {int len; } ;
struct spi_device {int mode; int /*<<< orphan*/  dev; int /*<<< orphan*/  master; } ;
struct sirfsoc_spi {int word_width; int left_rx_word; int /*<<< orphan*/  tx_done; TYPE_1__* regs; scalar_t__ base; int /*<<< orphan*/  tx; } ;
struct TYPE_2__ {scalar_t__ tx_rx_en; scalar_t__ int_en; scalar_t__ spi_cmd; scalar_t__ txfifo_op; } ;

/* Variables and functions */
 int SIRFSOC_MAX_CMD_BYTES ; 
 int SIRFSOC_SPI_CMD_TX_EN ; 
 int SIRFSOC_SPI_FIFO_RESET ; 
 int SIRFSOC_SPI_FIFO_START ; 
 int SIRFSOC_SPI_FRM_END_INT_EN ; 
 int SPI_LSB_FIRST ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int) ; 
 struct sirfsoc_spi* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct spi_device *spi,
	struct spi_transfer *t)
{
	struct sirfsoc_spi *sspi;
	int timeout = t->len * 10;
	u32 cmd;

	sspi = FUNC3(spi->master);
	FUNC5(SIRFSOC_SPI_FIFO_RESET, sspi->base + sspi->regs->txfifo_op);
	FUNC5(SIRFSOC_SPI_FIFO_START, sspi->base + sspi->regs->txfifo_op);
	FUNC2(&cmd, sspi->tx, t->len);
	if (sspi->word_width == 1 && !(spi->mode & SPI_LSB_FIRST))
		cmd = FUNC0(cmd) >>
			((SIRFSOC_MAX_CMD_BYTES - t->len) * 8);
	if (sspi->word_width == 2 && t->len == 4 &&
			(!(spi->mode & SPI_LSB_FIRST)))
		cmd = ((cmd & 0xffff) << 16) | (cmd >> 16);
	FUNC5(cmd, sspi->base + sspi->regs->spi_cmd);
	FUNC5(SIRFSOC_SPI_FRM_END_INT_EN,
		sspi->base + sspi->regs->int_en);
	FUNC5(SIRFSOC_SPI_CMD_TX_EN,
		sspi->base + sspi->regs->tx_rx_en);
	if (FUNC4(&sspi->tx_done, timeout) == 0) {
		FUNC1(&spi->dev, "cmd transfer timeout\n");
		return;
	}
	sspi->left_rx_word -= t->len;
}