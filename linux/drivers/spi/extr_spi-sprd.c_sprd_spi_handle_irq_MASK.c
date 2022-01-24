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
struct TYPE_2__ {scalar_t__ rx_len; } ;
struct sprd_spi {int trans_mode; scalar_t__ len; scalar_t__ (* read_bufs ) (struct sprd_spi*,scalar_t__) ;int /*<<< orphan*/  xfer_completion; TYPE_1__ dma; int /*<<< orphan*/  rx_buf; scalar_t__ base; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ SPRD_SPI_INT_CLR ; 
 scalar_t__ SPRD_SPI_INT_MASK_STS ; 
 int SPRD_SPI_MASK_RX_END ; 
 int SPRD_SPI_MASK_TX_END ; 
 int /*<<< orphan*/  SPRD_SPI_RX_END_CLR ; 
 int SPRD_SPI_RX_MODE ; 
 int /*<<< orphan*/  SPRD_SPI_TX_END_CLR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (struct sprd_spi*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *data)
{
	struct sprd_spi *ss = (struct sprd_spi *)data;
	u32 val = FUNC1(ss->base + SPRD_SPI_INT_MASK_STS);

	if (val & SPRD_SPI_MASK_TX_END) {
		FUNC3(SPRD_SPI_TX_END_CLR, ss->base + SPRD_SPI_INT_CLR);
		if (!(ss->trans_mode & SPRD_SPI_RX_MODE))
			FUNC0(&ss->xfer_completion);

		return IRQ_HANDLED;
	}

	if (val & SPRD_SPI_MASK_RX_END) {
		FUNC3(SPRD_SPI_RX_END_CLR, ss->base + SPRD_SPI_INT_CLR);
		if (ss->dma.rx_len < ss->len) {
			ss->rx_buf += ss->dma.rx_len;
			ss->dma.rx_len +=
				ss->read_bufs(ss, ss->len - ss->dma.rx_len);
		}
		FUNC0(&ss->xfer_completion);

		return IRQ_HANDLED;
	}

	return IRQ_NONE;
}