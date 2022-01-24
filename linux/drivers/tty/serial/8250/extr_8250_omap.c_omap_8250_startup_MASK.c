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
struct uart_port {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; struct omap8250_priv* private_data; } ;
struct uart_8250_port {int ier; TYPE_1__* dma; int /*<<< orphan*/  capabilities; scalar_t__ msr_saved_flags; scalar_t__ lsr_saved_flags; scalar_t__ mcr; } ;
struct omap8250_priv {int wer; int habit; scalar_t__ wakeirq; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* rx_dma ) (struct uart_8250_port*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_SHARED ; 
 int OMAP_UART_TX_WAKEUP_EN ; 
 int OMAP_UART_WER_HAS_TX_WAKEUP ; 
 int OMAP_UART_WER_MOD_WKUP ; 
 int /*<<< orphan*/  UART_CAP_RPM ; 
 int /*<<< orphan*/  UART_FCR ; 
 int UART_FCR_CLEAR_RCVR ; 
 int UART_FCR_CLEAR_XMIT ; 
 int /*<<< orphan*/  UART_IER ; 
 int UART_IER_RDI ; 
 int UART_IER_RLSI ; 
 int /*<<< orphan*/  UART_LCR ; 
 int UART_LCR_WLEN8 ; 
 int /*<<< orphan*/  UART_OMAP_WER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  omap8250_irq ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uart_port*) ; 
 int FUNC8 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC9 (struct uart_8250_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct uart_8250_port*) ; 
 scalar_t__ FUNC11 (struct uart_port*) ; 
 struct uart_8250_port* FUNC12 (struct uart_port*) ; 

__attribute__((used)) static int FUNC13(struct uart_port *port)
{
	struct uart_8250_port *up = FUNC12(port);
	struct omap8250_priv *priv = port->private_data;
	int ret;

	if (priv->wakeirq) {
		ret = FUNC2(port->dev, priv->wakeirq);
		if (ret)
			return ret;
	}

	FUNC4(port->dev);

	up->mcr = 0;
	FUNC9(up, UART_FCR, UART_FCR_CLEAR_RCVR | UART_FCR_CLEAR_XMIT);

	FUNC9(up, UART_LCR, UART_LCR_WLEN8);

	up->lsr_saved_flags = 0;
	up->msr_saved_flags = 0;

	/* Disable DMA for console UART */
	if (FUNC11(port))
		up->dma = NULL;

	if (up->dma) {
		ret = FUNC8(up);
		if (ret) {
			FUNC3(port->dev,
					     "failed to request DMA\n");
			up->dma = NULL;
		}
	}

	ret = FUNC7(port->irq, omap8250_irq, IRQF_SHARED,
			  FUNC0(port->dev), port);
	if (ret < 0)
		goto err;

	up->ier = UART_IER_RLSI | UART_IER_RDI;
	FUNC9(up, UART_IER, up->ier);

#ifdef CONFIG_PM
	up->capabilities |= UART_CAP_RPM;
#endif

	/* Enable module level wake up */
	priv->wer = OMAP_UART_WER_MOD_WKUP;
	if (priv->habit & OMAP_UART_WER_HAS_TX_WAKEUP)
		priv->wer |= OMAP_UART_TX_WAKEUP_EN;
	FUNC9(up, UART_OMAP_WER, priv->wer);

	if (up->dma)
		up->dma->rx_dma(up);

	FUNC5(port->dev);
	FUNC6(port->dev);
	return 0;
err:
	FUNC5(port->dev);
	FUNC6(port->dev);
	FUNC1(port->dev);
	return ret;
}