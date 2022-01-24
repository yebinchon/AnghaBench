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
struct spi_transfer {scalar_t__ len; } ;
struct spi_device {int /*<<< orphan*/  dev; } ;
struct spi_controller {int dummy; } ;
struct at91_usart_spi {int xfer_failed; int /*<<< orphan*/ * dev; scalar_t__ current_tx_remaining_bytes; int /*<<< orphan*/  xfer_completion; scalar_t__ current_rx_remaining_bytes; struct spi_transfer* current_transfer; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct spi_controller*,struct spi_device*,struct spi_transfer*) ; 
 unsigned long FUNC2 (struct at91_usart_spi*) ; 
 int FUNC3 (struct spi_controller*,struct spi_transfer*) ; 
 int /*<<< orphan*/  FUNC4 (struct at91_usart_spi*) ; 
 int /*<<< orphan*/  FUNC5 (struct at91_usart_spi*,struct spi_transfer*) ; 
 int /*<<< orphan*/  FUNC6 (struct at91_usart_spi*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct at91_usart_spi* FUNC10 (struct spi_controller*) ; 

__attribute__((used)) static int FUNC11(struct spi_controller *ctlr,
				       struct spi_device *spi,
				       struct spi_transfer *xfer)
{
	struct at91_usart_spi *aus = FUNC10(ctlr);
	unsigned long dma_timeout = 0;
	int ret = 0;

	FUNC5(aus, xfer);
	aus->xfer_failed = false;
	aus->current_transfer = xfer;
	aus->current_tx_remaining_bytes = xfer->len;
	aus->current_rx_remaining_bytes = xfer->len;

	while ((aus->current_tx_remaining_bytes ||
		aus->current_rx_remaining_bytes) && !aus->xfer_failed) {
		FUNC9(&aus->xfer_completion);
		if (FUNC1(ctlr, spi, xfer) &&
		    !ret) {
			ret = FUNC3(ctlr, xfer);
			if (ret)
				continue;

			dma_timeout = FUNC2(aus);

			if (FUNC0(dma_timeout == 0)) {
				FUNC8(&spi->dev, "DMA transfer timeout\n");
				return -EIO;
			}
			aus->current_tx_remaining_bytes = 0;
		} else {
			FUNC4(aus);
			FUNC6(aus);
		}

		FUNC7();
	}

	if (aus->xfer_failed) {
		FUNC8(aus->dev, "Overrun!\n");
		return -EIO;
	}

	return 0;
}