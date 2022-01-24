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
typedef  int /*<<< orphan*/  tx_enabled ;
struct uart_port {int /*<<< orphan*/  irq; } ;
struct s3c24xx_uart_port {scalar_t__ tx_in_progress; scalar_t__ dma; scalar_t__ rx_claimed; int /*<<< orphan*/  rx_irq; scalar_t__ tx_mode; scalar_t__ tx_claimed; int /*<<< orphan*/  tx_irq; } ;
typedef  int /*<<< orphan*/  rx_enabled ;

/* Variables and functions */
 int /*<<< orphan*/  S3C64XX_UINTM ; 
 int /*<<< orphan*/  S3C64XX_UINTP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct s3c24xx_uart_port*) ; 
 scalar_t__ FUNC1 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct s3c24xx_uart_port*) ; 
 struct s3c24xx_uart_port* FUNC3 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_port*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct uart_port *port)
{
	struct s3c24xx_uart_port *ourport = FUNC3(port);

	if (ourport->tx_claimed) {
		if (!FUNC1(port))
			FUNC0(ourport->tx_irq, ourport);
		tx_enabled(port) = 0;
		ourport->tx_claimed = 0;
		ourport->tx_mode = 0;
	}

	if (ourport->rx_claimed) {
		if (!FUNC1(port))
			FUNC0(ourport->rx_irq, ourport);
		ourport->rx_claimed = 0;
		rx_enabled(port) = 0;
	}

	/* Clear pending interrupts and mask all interrupts */
	if (FUNC1(port)) {
		FUNC0(port->irq, ourport);

		FUNC4(port, S3C64XX_UINTP, 0xf);
		FUNC4(port, S3C64XX_UINTM, 0xf);
	}

	if (ourport->dma)
		FUNC2(ourport);

	ourport->tx_in_progress = 0;
}