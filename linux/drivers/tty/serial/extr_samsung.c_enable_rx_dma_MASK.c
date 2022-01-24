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
struct uart_port {int dummy; } ;
struct s3c24xx_uart_port {int /*<<< orphan*/  rx_mode; struct uart_port port; } ;

/* Variables and functions */
 int /*<<< orphan*/  S3C2410_UCON ; 
 int /*<<< orphan*/  S3C24XX_RX_DMA ; 
 unsigned int S3C64XX_UCON_DMASUS_EN ; 
 unsigned int S3C64XX_UCON_EMPTYINT_EN ; 
 int S3C64XX_UCON_RXBURST_16 ; 
 unsigned int S3C64XX_UCON_RXBURST_MASK ; 
 int S3C64XX_UCON_RXMODE_DMA ; 
 unsigned int S3C64XX_UCON_RXMODE_MASK ; 
 unsigned int S3C64XX_UCON_TIMEOUT_EN ; 
 unsigned int S3C64XX_UCON_TIMEOUT_MASK ; 
 int S3C64XX_UCON_TIMEOUT_SHIFT ; 
 unsigned int FUNC0 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct s3c24xx_uart_port *ourport)
{
	struct uart_port *port = &ourport->port;
	unsigned int ucon;

	/* set Rx mode to DMA mode */
	ucon = FUNC0(port, S3C2410_UCON);
	ucon &= ~(S3C64XX_UCON_RXBURST_MASK |
			S3C64XX_UCON_TIMEOUT_MASK |
			S3C64XX_UCON_EMPTYINT_EN |
			S3C64XX_UCON_DMASUS_EN |
			S3C64XX_UCON_TIMEOUT_EN |
			S3C64XX_UCON_RXMODE_MASK);
	ucon |= S3C64XX_UCON_RXBURST_16 |
			0xf << S3C64XX_UCON_TIMEOUT_SHIFT |
			S3C64XX_UCON_EMPTYINT_EN |
			S3C64XX_UCON_TIMEOUT_EN |
			S3C64XX_UCON_RXMODE_DMA;
	FUNC1(port, S3C2410_UCON, ucon);

	ourport->rx_mode = S3C24XX_RX_DMA;
}