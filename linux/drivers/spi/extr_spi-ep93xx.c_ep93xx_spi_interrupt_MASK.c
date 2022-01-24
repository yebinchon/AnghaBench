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
struct spi_master {TYPE_1__* cur_msg; int /*<<< orphan*/  dev; } ;
struct ep93xx_spi {scalar_t__ mmio; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ SSPCR1 ; 
 int SSPCR1_RIE ; 
 int SSPCR1_RORIE ; 
 int SSPCR1_TIE ; 
 scalar_t__ SSPICR ; 
 scalar_t__ SSPIIR ; 
 int SSPIIR_RORIS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (struct spi_master*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_master*) ; 
 struct ep93xx_spi* FUNC4 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct spi_master *master = dev_id;
	struct ep93xx_spi *espi = FUNC4(master);
	u32 val;

	/*
	 * If we got ROR (receive overrun) interrupt we know that something is
	 * wrong. Just abort the message.
	 */
	if (FUNC2(espi->mmio + SSPIIR) & SSPIIR_RORIS) {
		/* clear the overrun interrupt */
		FUNC5(0, espi->mmio + SSPICR);
		FUNC0(&master->dev,
			 "receive overrun, aborting the message\n");
		master->cur_msg->status = -EIO;
	} else {
		/*
		 * Interrupt is either RX (RIS) or TX (TIS). For both cases we
		 * simply execute next data transfer.
		 */
		if (FUNC1(master)) {
			/*
			 * In normal case, there still is some processing left
			 * for current transfer. Let's wait for the next
			 * interrupt then.
			 */
			return IRQ_HANDLED;
		}
	}

	/*
	 * Current transfer is finished, either with error or with success. In
	 * any case we disable interrupts and notify the worker to handle
	 * any post-processing of the message.
	 */
	val = FUNC2(espi->mmio + SSPCR1);
	val &= ~(SSPCR1_RORIE | SSPCR1_TIE | SSPCR1_RIE);
	FUNC5(val, espi->mmio + SSPCR1);

	FUNC3(master);

	return IRQ_HANDLED;
}