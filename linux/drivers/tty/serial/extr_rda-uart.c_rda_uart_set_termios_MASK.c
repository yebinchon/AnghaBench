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
typedef  unsigned int u32 ;
struct uart_port {int uartclk; int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;
struct rda_uart_port {int dummy; } ;
struct ktermios {int c_cflag; } ;

/* Variables and functions */
 int CMSPAR ; 
 int CRTSCTS ; 
#define  CS5 130 
#define  CS6 129 
#define  CS7 128 
 int CSIZE ; 
 int CSTOPB ; 
 int PARENB ; 
 int PARODD ; 
 unsigned int FUNC0 (int) ; 
 int /*<<< orphan*/  RDA_UART_CMD_CLR ; 
 int /*<<< orphan*/  RDA_UART_CMD_SET ; 
 int /*<<< orphan*/  RDA_UART_CTRL ; 
 unsigned int RDA_UART_DBITS_8 ; 
 unsigned int RDA_UART_DMA_EN ; 
 unsigned int RDA_UART_ENABLE ; 
 unsigned int RDA_UART_FLOW_CNT_EN ; 
 int /*<<< orphan*/  RDA_UART_IRQ_MASK ; 
 int /*<<< orphan*/  RDA_UART_IRQ_TRIGGERS ; 
 unsigned int RDA_UART_PARITY_EN ; 
 unsigned int RDA_UART_PARITY_EVEN ; 
 unsigned int RDA_UART_PARITY_MARK ; 
 unsigned int RDA_UART_PARITY_ODD ; 
 unsigned int RDA_UART_PARITY_SPACE ; 
 unsigned int RDA_UART_RTS ; 
 unsigned int FUNC1 (int) ; 
 unsigned int RDA_UART_TX_SBITS_2 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct rda_uart_port*,unsigned int) ; 
 unsigned int FUNC4 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_port*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 struct rda_uart_port* FUNC8 (struct uart_port*) ; 
 scalar_t__ FUNC9 (struct ktermios*) ; 
 int /*<<< orphan*/  FUNC10 (struct ktermios*,unsigned int,unsigned int) ; 
 unsigned int FUNC11 (struct uart_port*,struct ktermios*,struct ktermios*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct uart_port*,int,unsigned int) ; 

__attribute__((used)) static void FUNC13(struct uart_port *port,
				 struct ktermios *termios,
				 struct ktermios *old)
{
	struct rda_uart_port *rda_port = FUNC8(port);
	unsigned long flags;
	unsigned int ctrl, cmd_set, cmd_clr, triggers;
	unsigned int baud;
	u32 irq_mask;

	FUNC6(&port->lock, flags);

	baud = FUNC11(port, termios, old, 9600, port->uartclk / 4);
	FUNC3(rda_port, baud);

	ctrl = FUNC4(port, RDA_UART_CTRL);
	cmd_set = FUNC4(port, RDA_UART_CMD_SET);
	cmd_clr = FUNC4(port, RDA_UART_CMD_CLR);

	switch (termios->c_cflag & CSIZE) {
	case CS5:
	case CS6:
		FUNC2(port->dev, "bit size not supported, using 7 bits\n");
		/* Fall through */
	case CS7:
		ctrl &= ~RDA_UART_DBITS_8;
		break;
	default:
		ctrl |= RDA_UART_DBITS_8;
		break;
	}

	/* stop bits */
	if (termios->c_cflag & CSTOPB)
		ctrl |= RDA_UART_TX_SBITS_2;
	else
		ctrl &= ~RDA_UART_TX_SBITS_2;

	/* parity check */
	if (termios->c_cflag & PARENB) {
		ctrl |= RDA_UART_PARITY_EN;

		/* Mark or Space parity */
		if (termios->c_cflag & CMSPAR) {
			if (termios->c_cflag & PARODD)
				ctrl |= RDA_UART_PARITY_MARK;
			else
				ctrl |= RDA_UART_PARITY_SPACE;
		} else if (termios->c_cflag & PARODD) {
			ctrl |= RDA_UART_PARITY_ODD;
		} else {
			ctrl |= RDA_UART_PARITY_EVEN;
		}
	} else {
		ctrl &= ~RDA_UART_PARITY_EN;
	}

	/* Hardware handshake (RTS/CTS) */
	if (termios->c_cflag & CRTSCTS) {
		ctrl   |= RDA_UART_FLOW_CNT_EN;
		cmd_set |= RDA_UART_RTS;
	} else {
		ctrl   &= ~RDA_UART_FLOW_CNT_EN;
		cmd_clr |= RDA_UART_RTS;
	}

	ctrl |= RDA_UART_ENABLE;
	ctrl &= ~RDA_UART_DMA_EN;

	triggers  = (FUNC0(20) | FUNC1(16));
	irq_mask = FUNC4(port, RDA_UART_IRQ_MASK);
	FUNC5(port, 0, RDA_UART_IRQ_MASK);

	FUNC5(port, triggers, RDA_UART_IRQ_TRIGGERS);
	FUNC5(port, ctrl, RDA_UART_CTRL);
	FUNC5(port, cmd_set, RDA_UART_CMD_SET);
	FUNC5(port, cmd_clr, RDA_UART_CMD_CLR);

	FUNC5(port, irq_mask, RDA_UART_IRQ_MASK);

	/* Don't rewrite B0 */
	if (FUNC9(termios))
		FUNC10(termios, baud, baud);

	/* update the per-port timeout */
	FUNC12(port, termios->c_cflag, baud);

	FUNC7(&port->lock, flags);
}