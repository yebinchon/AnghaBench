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
struct spi_message {int dummy; } ;
struct spi_controller {int dummy; } ;
struct at91_usart_spi {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CR ; 
 int /*<<< orphan*/  IDR ; 
 int US_DISABLE ; 
 int US_OVRE_RXRDY_IRQS ; 
 int US_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct at91_usart_spi*,int /*<<< orphan*/ ,int) ; 
 struct at91_usart_spi* FUNC1 (struct spi_controller*) ; 

__attribute__((used)) static int FUNC2(struct spi_controller *ctlr,
					    struct spi_message *message)
{
	struct at91_usart_spi *aus = FUNC1(ctlr);

	FUNC0(aus, CR, US_RESET | US_DISABLE);
	FUNC0(aus, IDR, US_OVRE_RXRDY_IRQS);

	return 0;
}