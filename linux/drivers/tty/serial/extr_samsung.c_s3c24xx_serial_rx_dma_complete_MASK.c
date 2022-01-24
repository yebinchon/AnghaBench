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
struct s3c24xx_uart_port {struct uart_port port; struct s3c24xx_uart_dma* dma; } ;
struct s3c24xx_uart_dma {int rx_bytes_requested; int /*<<< orphan*/  rx_desc; int /*<<< orphan*/  rx_cookie; int /*<<< orphan*/  rx_chan; } ;
struct dma_tx_state {int residue; } ;
struct TYPE_2__ {struct tty_port port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dma_tx_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct s3c24xx_uart_port*,struct tty_port*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct s3c24xx_uart_port*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct tty_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct tty_struct*) ; 
 struct tty_struct* FUNC8 (struct tty_port*) ; 

__attribute__((used)) static void FUNC9(void *args)
{
	struct s3c24xx_uart_port *ourport = args;
	struct uart_port *port = &ourport->port;

	struct s3c24xx_uart_dma *dma = ourport->dma;
	struct tty_port *t = &port->state->port;
	struct tty_struct *tty = FUNC8(&ourport->port.state->port);

	struct dma_tx_state state;
	unsigned long flags;
	int received;

	FUNC1(dma->rx_chan,  dma->rx_cookie, &state);
	received  = dma->rx_bytes_requested - state.residue;
	FUNC0(dma->rx_desc);

	FUNC4(&port->lock, flags);

	if (received)
		FUNC2(ourport, t, received);

	if (tty) {
		FUNC6(t);
		FUNC7(tty);
	}

	FUNC3(ourport);

	FUNC5(&port->lock, flags);
}