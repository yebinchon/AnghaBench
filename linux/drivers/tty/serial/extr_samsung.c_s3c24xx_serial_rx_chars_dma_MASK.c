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
struct uart_port {int /*<<< orphan*/  lock; TYPE_1__* state; } ;
struct tty_struct {int dummy; } ;
struct tty_port {int dummy; } ;
struct s3c24xx_uart_port {scalar_t__ rx_mode; struct uart_port port; struct s3c24xx_uart_dma* dma; } ;
struct s3c24xx_uart_dma {unsigned int rx_bytes_requested; int /*<<< orphan*/  rx_chan; int /*<<< orphan*/  rx_cookie; } ;
struct dma_tx_state {unsigned int residue; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {struct tty_port port; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  S3C2410_UFSTAT ; 
 int /*<<< orphan*/  S3C2410_UTRSTAT ; 
 unsigned int S3C2410_UTRSTAT_TIMEOUT ; 
 scalar_t__ S3C24XX_RX_DMA ; 
 scalar_t__ S3C24XX_RX_PIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dma_tx_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct s3c24xx_uart_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct s3c24xx_uart_port*) ; 
 unsigned int FUNC5 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct s3c24xx_uart_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct s3c24xx_uart_port*,struct tty_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct s3c24xx_uart_port*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (struct tty_port*) ; 
 int /*<<< orphan*/  FUNC12 (struct tty_struct*) ; 
 struct tty_struct* FUNC13 (struct tty_port*) ; 
 int /*<<< orphan*/  FUNC14 (struct uart_port*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static irqreturn_t FUNC15(void *dev_id)
{
	unsigned int utrstat, ufstat, received;
	struct s3c24xx_uart_port *ourport = dev_id;
	struct uart_port *port = &ourport->port;
	struct s3c24xx_uart_dma *dma = ourport->dma;
	struct tty_struct *tty = FUNC13(&ourport->port.state->port);
	struct tty_port *t = &port->state->port;
	unsigned long flags;
	struct dma_tx_state state;

	utrstat = FUNC5(port, S3C2410_UTRSTAT);
	ufstat = FUNC5(port, S3C2410_UFSTAT);

	FUNC9(&port->lock, flags);

	if (!(utrstat & S3C2410_UTRSTAT_TIMEOUT)) {
		FUNC8(ourport);
		if (ourport->rx_mode == S3C24XX_RX_PIO)
			FUNC3(ourport);
		goto finish;
	}

	if (ourport->rx_mode == S3C24XX_RX_DMA) {
		FUNC0(dma->rx_chan);
		FUNC2(dma->rx_chan, dma->rx_cookie, &state);
		FUNC1(dma->rx_chan);
		received = dma->rx_bytes_requested - state.residue;
		FUNC7(ourport, t, received);

		FUNC4(ourport);
	}

	FUNC6(ourport);

	if (tty) {
		FUNC11(t);
		FUNC12(tty);
	}

	FUNC14(port, S3C2410_UTRSTAT, S3C2410_UTRSTAT_TIMEOUT);

finish:
	FUNC10(&port->lock, flags);

	return IRQ_HANDLED;
}