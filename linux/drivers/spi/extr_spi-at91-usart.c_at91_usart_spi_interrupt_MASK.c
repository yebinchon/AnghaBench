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
struct spi_controller {int dummy; } ;
struct at91_usart_spi {int xfer_failed; int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IDR ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int US_IR_OVRE ; 
 int US_IR_RXRDY ; 
 scalar_t__ FUNC0 (struct at91_usart_spi*) ; 
 int /*<<< orphan*/  FUNC1 (struct at91_usart_spi*) ; 
 int /*<<< orphan*/  FUNC2 (struct at91_usart_spi*) ; 
 scalar_t__ FUNC3 (struct at91_usart_spi*) ; 
 int /*<<< orphan*/  FUNC4 (struct at91_usart_spi*,int /*<<< orphan*/ ,int) ; 
 struct at91_usart_spi* FUNC5 (struct spi_controller*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *dev_id)
{
	struct spi_controller *controller = dev_id;
	struct at91_usart_spi *aus = FUNC5(controller);

	FUNC6(&aus->lock);
	FUNC1(aus);

	if (FUNC0(aus)) {
		aus->xfer_failed = true;
		FUNC4(aus, IDR, US_IR_OVRE | US_IR_RXRDY);
		FUNC7(&aus->lock);
		return IRQ_HANDLED;
	}

	if (FUNC3(aus)) {
		FUNC2(aus);
		FUNC7(&aus->lock);
		return IRQ_HANDLED;
	}

	FUNC7(&aus->lock);

	return IRQ_NONE;
}