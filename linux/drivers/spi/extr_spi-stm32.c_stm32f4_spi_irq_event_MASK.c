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
struct stm32_spi {scalar_t__ cur_comm; scalar_t__ tx_len; scalar_t__ rx_len; int /*<<< orphan*/  lock; scalar_t__ tx_buf; scalar_t__ base; int /*<<< orphan*/  dev; int /*<<< orphan*/  cur_usedma; } ;
struct spi_master {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  IRQ_WAKE_THREAD ; 
 scalar_t__ SPI_3WIRE_TX ; 
 scalar_t__ SPI_FULL_DUPLEX ; 
 scalar_t__ SPI_SIMPLEX_TX ; 
 int /*<<< orphan*/  STM32F4_SPI_CR2 ; 
 int STM32F4_SPI_CR2_ERRIE ; 
 int STM32F4_SPI_CR2_RXNEIE ; 
 int STM32F4_SPI_CR2_TXEIE ; 
 scalar_t__ STM32F4_SPI_DR ; 
 scalar_t__ STM32F4_SPI_SR ; 
 int STM32F4_SPI_SR_BSY ; 
 int STM32F4_SPI_SR_OVR ; 
 int STM32F4_SPI_SR_RXNE ; 
 int STM32F4_SPI_SR_TXE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (scalar_t__) ; 
 struct stm32_spi* FUNC3 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct stm32_spi*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct stm32_spi*) ; 
 int /*<<< orphan*/  FUNC8 (struct stm32_spi*) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *dev_id)
{
	struct spi_master *master = dev_id;
	struct stm32_spi *spi = FUNC3(master);
	u32 sr, mask = 0;
	unsigned long flags;
	bool end = false;

	FUNC4(&spi->lock, flags);

	sr = FUNC2(spi->base + STM32F4_SPI_SR);
	/*
	 * BSY flag is not handled in interrupt but it is normal behavior when
	 * this flag is set.
	 */
	sr &= ~STM32F4_SPI_SR_BSY;

	if (!spi->cur_usedma && (spi->cur_comm == SPI_SIMPLEX_TX ||
				 spi->cur_comm == SPI_3WIRE_TX)) {
		/* OVR flag shouldn't be handled for TX only mode */
		sr &= ~STM32F4_SPI_SR_OVR | STM32F4_SPI_SR_RXNE;
		mask |= STM32F4_SPI_SR_TXE;
	}

	if (!spi->cur_usedma && spi->cur_comm == SPI_FULL_DUPLEX) {
		/* TXE flag is set and is handled when RXNE flag occurs */
		sr &= ~STM32F4_SPI_SR_TXE;
		mask |= STM32F4_SPI_SR_RXNE | STM32F4_SPI_SR_OVR;
	}

	if (!(sr & mask)) {
		FUNC0(spi->dev, "spurious IT (sr=0x%08x)\n", sr);
		FUNC5(&spi->lock, flags);
		return IRQ_NONE;
	}

	if (sr & STM32F4_SPI_SR_OVR) {
		FUNC1(spi->dev, "Overrun: received value discarded\n");

		/* Sequence to clear OVR flag */
		FUNC2(spi->base + STM32F4_SPI_DR);
		FUNC2(spi->base + STM32F4_SPI_SR);

		/*
		 * If overrun is detected, it means that something went wrong,
		 * so stop the current transfer. Transfer can wait for next
		 * RXNE but DR is already read and end never happens.
		 */
		end = true;
		goto end_irq;
	}

	if (sr & STM32F4_SPI_SR_TXE) {
		if (spi->tx_buf)
			FUNC8(spi);
		if (spi->tx_len == 0)
			end = true;
	}

	if (sr & STM32F4_SPI_SR_RXNE) {
		FUNC7(spi);
		if (spi->rx_len == 0)
			end = true;
		else /* Load data for discontinuous mode */
			FUNC8(spi);
	}

end_irq:
	if (end) {
		/* Immediately disable interrupts to do not generate new one */
		FUNC6(spi, STM32F4_SPI_CR2,
					STM32F4_SPI_CR2_TXEIE |
					STM32F4_SPI_CR2_RXNEIE |
					STM32F4_SPI_CR2_ERRIE);
		FUNC5(&spi->lock, flags);
		return IRQ_WAKE_THREAD;
	}

	FUNC5(&spi->lock, flags);
	return IRQ_HANDLED;
}