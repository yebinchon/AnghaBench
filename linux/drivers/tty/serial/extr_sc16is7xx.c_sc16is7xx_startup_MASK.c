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
struct uart_port {int /*<<< orphan*/  dev; } ;
struct sc16is7xx_port {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  SC16IS7XX_EFCR_REG ; 
 int SC16IS7XX_EFCR_RXDISABLE_BIT ; 
 int SC16IS7XX_EFCR_TXDISABLE_BIT ; 
 unsigned int SC16IS7XX_EFR_ENABLE_BIT ; 
 int /*<<< orphan*/  SC16IS7XX_EFR_REG ; 
 unsigned int SC16IS7XX_FCR_FIFO_BIT ; 
 int /*<<< orphan*/  SC16IS7XX_FCR_REG ; 
 unsigned int SC16IS7XX_FCR_RXRESET_BIT ; 
 unsigned int SC16IS7XX_FCR_TXRESET_BIT ; 
 unsigned int SC16IS7XX_IER_RDI_BIT ; 
 int /*<<< orphan*/  SC16IS7XX_IER_REG ; 
 unsigned int SC16IS7XX_IER_THRI_BIT ; 
 unsigned int SC16IS7XX_LCR_CONF_MODE_B ; 
 int /*<<< orphan*/  SC16IS7XX_LCR_REG ; 
 unsigned int SC16IS7XX_LCR_WORD_LEN_8 ; 
 int /*<<< orphan*/  SC16IS7XX_MCR_REG ; 
 int SC16IS7XX_MCR_TCRTLR_BIT ; 
 int /*<<< orphan*/  SC16IS7XX_TCR_REG ; 
 unsigned int FUNC0 (int) ; 
 unsigned int FUNC1 (int) ; 
 struct sc16is7xx_port* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_port*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_port*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_port*,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct uart_port *port)
{
	struct sc16is7xx_port *s = FUNC2(port->dev);
	unsigned int val;

	FUNC6(port, 1);

	/* Reset FIFOs*/
	val = SC16IS7XX_FCR_RXRESET_BIT | SC16IS7XX_FCR_TXRESET_BIT;
	FUNC5(port, SC16IS7XX_FCR_REG, val);
	FUNC7(5);
	FUNC5(port, SC16IS7XX_FCR_REG,
			     SC16IS7XX_FCR_FIFO_BIT);

	/* Enable EFR */
	FUNC5(port, SC16IS7XX_LCR_REG,
			     SC16IS7XX_LCR_CONF_MODE_B);

	FUNC3(s->regmap, true);

	/* Enable write access to enhanced features and internal clock div */
	FUNC5(port, SC16IS7XX_EFR_REG,
			     SC16IS7XX_EFR_ENABLE_BIT);

	/* Enable TCR/TLR */
	FUNC4(port, SC16IS7XX_MCR_REG,
			      SC16IS7XX_MCR_TCRTLR_BIT,
			      SC16IS7XX_MCR_TCRTLR_BIT);

	/* Configure flow control levels */
	/* Flow control halt level 48, resume level 24 */
	FUNC5(port, SC16IS7XX_TCR_REG,
			     FUNC1(24) |
			     FUNC0(48));

	FUNC3(s->regmap, false);

	/* Now, initialize the UART */
	FUNC5(port, SC16IS7XX_LCR_REG, SC16IS7XX_LCR_WORD_LEN_8);

	/* Enable the Rx and Tx FIFO */
	FUNC4(port, SC16IS7XX_EFCR_REG,
			      SC16IS7XX_EFCR_RXDISABLE_BIT |
			      SC16IS7XX_EFCR_TXDISABLE_BIT,
			      0);

	/* Enable RX, TX interrupts */
	val = SC16IS7XX_IER_RDI_BIT | SC16IS7XX_IER_THRI_BIT;
	FUNC5(port, SC16IS7XX_IER_REG, val);

	return 0;
}