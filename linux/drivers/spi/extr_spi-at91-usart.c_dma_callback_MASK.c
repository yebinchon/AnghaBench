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
struct at91_usart_spi {int /*<<< orphan*/  xfer_completion; scalar_t__ current_rx_remaining_bytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  IER ; 
 int /*<<< orphan*/  US_IR_RXRDY ; 
 int /*<<< orphan*/  FUNC0 (struct at91_usart_spi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct at91_usart_spi* FUNC2 (struct spi_controller*) ; 

__attribute__((used)) static void FUNC3(void *data)
{
	struct spi_controller   *ctlr = data;
	struct at91_usart_spi   *aus = FUNC2(ctlr);

	FUNC0(aus, IER, US_IR_RXRDY);
	aus->current_rx_remaining_bytes = 0;
	FUNC1(&aus->xfer_completion);
}