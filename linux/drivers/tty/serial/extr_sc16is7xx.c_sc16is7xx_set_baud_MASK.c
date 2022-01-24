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
typedef  unsigned long u8 ;
struct uart_port {unsigned long uartclk; int /*<<< orphan*/  dev; } ;
struct sc16is7xx_port {int /*<<< orphan*/  regmap; int /*<<< orphan*/  efr_lock; } ;

/* Variables and functions */
 int FUNC0 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  SC16IS7XX_DLH_REG ; 
 int /*<<< orphan*/  SC16IS7XX_DLL_REG ; 
 unsigned long SC16IS7XX_EFR_ENABLE_BIT ; 
 int /*<<< orphan*/  SC16IS7XX_EFR_REG ; 
 unsigned long SC16IS7XX_LCR_CONF_MODE_A ; 
 unsigned long SC16IS7XX_LCR_CONF_MODE_B ; 
 int /*<<< orphan*/  SC16IS7XX_LCR_REG ; 
 unsigned long SC16IS7XX_MCR_CLKSEL_BIT ; 
 int /*<<< orphan*/  SC16IS7XX_MCR_REG ; 
 struct sc16is7xx_port* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 unsigned long FUNC5 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_port*,int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct uart_port*,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct uart_port *port, int baud)
{
	struct sc16is7xx_port *s = FUNC1(port->dev);
	u8 lcr;
	u8 prescaler = 0;
	unsigned long clk = port->uartclk, div = clk / 16 / baud;

	if (div > 0xffff) {
		prescaler = SC16IS7XX_MCR_CLKSEL_BIT;
		div /= 4;
	}

	/* In an amazing feat of design, the Enhanced Features Register shares
	 * the address of the Interrupt Identification Register, and is
	 * switched in by writing a magic value (0xbf) to the Line Control
	 * Register. Any interrupt firing during this time will see the EFR
	 * where it expects the IIR to be, leading to "Unexpected interrupt"
	 * messages.
	 *
	 * Prevent this possibility by claiming a mutex while accessing the
	 * EFR, and claiming the same mutex from within the interrupt handler.
	 * This is similar to disabling the interrupt, but that doesn't work
	 * because the bulk of the interrupt processing is run as a workqueue
	 * job in thread context.
	 */
	FUNC2(&s->efr_lock);

	lcr = FUNC5(port, SC16IS7XX_LCR_REG);

	/* Open the LCR divisors for configuration */
	FUNC7(port, SC16IS7XX_LCR_REG,
			     SC16IS7XX_LCR_CONF_MODE_B);

	/* Enable enhanced features */
	FUNC4(s->regmap, true);
	FUNC7(port, SC16IS7XX_EFR_REG,
			     SC16IS7XX_EFR_ENABLE_BIT);
	FUNC4(s->regmap, false);

	/* Put LCR back to the normal mode */
	FUNC7(port, SC16IS7XX_LCR_REG, lcr);

	FUNC3(&s->efr_lock);

	FUNC6(port, SC16IS7XX_MCR_REG,
			      SC16IS7XX_MCR_CLKSEL_BIT,
			      prescaler);

	/* Open the LCR divisors for configuration */
	FUNC7(port, SC16IS7XX_LCR_REG,
			     SC16IS7XX_LCR_CONF_MODE_A);

	/* Write the new divisor */
	FUNC4(s->regmap, true);
	FUNC7(port, SC16IS7XX_DLH_REG, div / 256);
	FUNC7(port, SC16IS7XX_DLL_REG, div % 256);
	FUNC4(s->regmap, false);

	/* Put LCR back to the normal mode */
	FUNC7(port, SC16IS7XX_LCR_REG, lcr);

	return FUNC0(clk / 16, div);
}