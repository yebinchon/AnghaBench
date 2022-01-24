#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  mctrl; TYPE_1__* ops; struct omap8250_priv* private_data; } ;
struct uart_8250_port {int fcr; int ier; int lcr; TYPE_2__ port; int /*<<< orphan*/  mcr; struct uart_8250_dma* dma; } ;
struct uart_8250_dma {scalar_t__ tx_running; } ;
struct omap8250_priv {int delayed_restore; int efr; int xon; int xoff; int /*<<< orphan*/  quot; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* set_mctrl ) (TYPE_2__*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  RX_TRIGGER ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TX_TRIGGER ; 
 int /*<<< orphan*/  UART_EFR ; 
 int UART_EFR_ECB ; 
 int /*<<< orphan*/  UART_FCR ; 
 int /*<<< orphan*/  UART_IER ; 
 int /*<<< orphan*/  UART_LCR ; 
 int UART_LCR_CONF_MODE_A ; 
 int UART_LCR_CONF_MODE_B ; 
 int /*<<< orphan*/  UART_MCR_TCRTLR ; 
 int /*<<< orphan*/  UART_TI752_TCR ; 
 int /*<<< orphan*/  UART_TI752_TLR ; 
 int UART_TI752_TLR_RX ; 
 int UART_TI752_TLR_TX ; 
 int /*<<< orphan*/  UART_XOFF1 ; 
 int /*<<< orphan*/  UART_XON1 ; 
 int /*<<< orphan*/  FUNC3 (struct uart_8250_port*,struct omap8250_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_8250_port*,struct omap8250_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_8250_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_8250_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct uart_8250_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct uart_8250_port *up)
{
	struct omap8250_priv *priv = up->port.private_data;
	struct uart_8250_dma	*dma = up->dma;

	if (dma && dma->tx_running) {
		/*
		 * TCSANOW requests the change to occur immediately however if
		 * we have a TX-DMA operation in progress then it has been
		 * observed that it might stall and never complete. Therefore we
		 * delay DMA completes to prevent this hang from happen.
		 */
		priv->delayed_restore = 1;
		return;
	}

	FUNC7(up, UART_LCR, UART_LCR_CONF_MODE_B);
	FUNC7(up, UART_EFR, UART_EFR_ECB);

	FUNC7(up, UART_LCR, UART_LCR_CONF_MODE_A);
	FUNC5(up, UART_MCR_TCRTLR);
	FUNC7(up, UART_FCR, up->fcr);

	FUNC4(up, priv);

	FUNC7(up, UART_LCR, UART_LCR_CONF_MODE_B);

	FUNC7(up, UART_TI752_TCR, FUNC1(16) |
			FUNC0(52));
	FUNC7(up, UART_TI752_TLR,
		   FUNC2(TX_TRIGGER) << UART_TI752_TLR_TX |
		   FUNC2(RX_TRIGGER) << UART_TI752_TLR_RX);

	FUNC7(up, UART_LCR, 0);

	/* drop TCR + TLR access, we setup XON/XOFF later */
	FUNC5(up, up->mcr);
	FUNC7(up, UART_IER, up->ier);

	FUNC7(up, UART_LCR, UART_LCR_CONF_MODE_B);
	FUNC6(up, priv->quot);

	FUNC7(up, UART_EFR, priv->efr);

	/* Configure flow control */
	FUNC7(up, UART_LCR, UART_LCR_CONF_MODE_B);
	FUNC7(up, UART_XON1, priv->xon);
	FUNC7(up, UART_XOFF1, priv->xoff);

	FUNC7(up, UART_LCR, up->lcr);

	FUNC3(up, priv);

	up->port.ops->set_mctrl(&up->port, up->port.mctrl);
}