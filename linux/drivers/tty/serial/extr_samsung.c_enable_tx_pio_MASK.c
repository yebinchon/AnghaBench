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
typedef  int /*<<< orphan*/  u32 ;
struct uart_port {int dummy; } ;
struct s3c24xx_uart_port {void* tx_mode; int /*<<< orphan*/  tx_irq; void* tx_in_progress; struct uart_port port; } ;

/* Variables and functions */
 int /*<<< orphan*/  S3C2410_UCON ; 
 int /*<<< orphan*/  S3C2410_UFCON ; 
 void* S3C24XX_TX_PIO ; 
 int /*<<< orphan*/  S3C64XX_UCON_TXMODE_CPU ; 
 int /*<<< orphan*/  S3C64XX_UCON_TXMODE_MASK ; 
 int /*<<< orphan*/  S3C64XX_UINTM ; 
 int /*<<< orphan*/  S3C64XX_UINTM_TXD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct s3c24xx_uart_port *ourport)
{
	struct uart_port *port = &ourport->port;
	u32 ucon, ufcon;

	/* Set ufcon txtrig */
	ourport->tx_in_progress = S3C24XX_TX_PIO;
	ufcon = FUNC1(port, S3C2410_UFCON);
	FUNC4(port,  S3C2410_UFCON, ufcon);

	/* Enable tx pio mode */
	ucon = FUNC1(port, S3C2410_UCON);
	ucon &= ~(S3C64XX_UCON_TXMODE_MASK);
	ucon |= S3C64XX_UCON_TXMODE_CPU;
	FUNC4(port,  S3C2410_UCON, ucon);

	/* Unmask Tx interrupt */
	if (FUNC3(port))
		FUNC2(port, S3C64XX_UINTM_TXD,
				  S3C64XX_UINTM);
	else
		FUNC0(ourport->tx_irq);

	ourport->tx_mode = S3C24XX_TX_PIO;
}