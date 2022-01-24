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
struct TYPE_4__ {int flags; int /*<<< orphan*/  delay_rts_after_send; int /*<<< orphan*/  delay_rts_before_send; } ;
struct uart_port {TYPE_2__ rs485; int /*<<< orphan*/  dev; } ;
struct max310x_port {TYPE_1__* devtype; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* power ) (struct uart_port*,int) ;} ;

/* Variables and functions */
 unsigned int FUNC0 (int) ; 
 int /*<<< orphan*/  MAX310X_FLOWLVL_REG ; 
 unsigned int FUNC1 (int) ; 
 int /*<<< orphan*/  MAX310X_HDPIXDELAY_REG ; 
 int /*<<< orphan*/  MAX310X_IRQEN_REG ; 
 int /*<<< orphan*/  MAX310X_IRQSTS_REG ; 
 unsigned int MAX310X_IRQ_CTS_BIT ; 
 unsigned int MAX310X_IRQ_RXEMPTY_BIT ; 
 unsigned int MAX310X_IRQ_TXEMPTY_BIT ; 
 int /*<<< orphan*/  MAX310X_MODE1_REG ; 
 unsigned int MAX310X_MODE1_TRNSCVCTRL_BIT ; 
 unsigned int MAX310X_MODE2_ECHOSUPR_BIT ; 
 unsigned int MAX310X_MODE2_FIFORST_BIT ; 
 int /*<<< orphan*/  MAX310X_MODE2_REG ; 
 unsigned int MAX310X_MODE2_RXEMPTINV_BIT ; 
 int SER_RS485_ENABLED ; 
 int SER_RS485_RX_DURING_TX ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 struct max310x_port* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_port*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_port*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct uart_port*,int) ; 

__attribute__((used)) static int FUNC8(struct uart_port *port)
{
	struct max310x_port *s = FUNC3(port->dev);
	unsigned int val;

	s->devtype->power(port, 1);

	/* Configure MODE1 register */
	FUNC5(port, MAX310X_MODE1_REG,
			    MAX310X_MODE1_TRNSCVCTRL_BIT, 0);

	/* Configure MODE2 register & Reset FIFOs*/
	val = MAX310X_MODE2_RXEMPTINV_BIT | MAX310X_MODE2_FIFORST_BIT;
	FUNC6(port, MAX310X_MODE2_REG, val);
	FUNC5(port, MAX310X_MODE2_REG,
			    MAX310X_MODE2_FIFORST_BIT, 0);

	/* Configure mode1/mode2 to have rs485/rs232 enabled at startup */
	val = (FUNC2(port->rs485.delay_rts_before_send, 0U, 15U) << 4) |
		FUNC2(port->rs485.delay_rts_after_send, 0U, 15U);
	FUNC6(port, MAX310X_HDPIXDELAY_REG, val);

	if (port->rs485.flags & SER_RS485_ENABLED) {
		FUNC5(port, MAX310X_MODE1_REG,
				    MAX310X_MODE1_TRNSCVCTRL_BIT,
				    MAX310X_MODE1_TRNSCVCTRL_BIT);

		if (!(port->rs485.flags & SER_RS485_RX_DURING_TX))
			FUNC5(port, MAX310X_MODE2_REG,
					    MAX310X_MODE2_ECHOSUPR_BIT,
					    MAX310X_MODE2_ECHOSUPR_BIT);
	}

	/* Configure flow control levels */
	/* Flow control halt level 96, resume level 48 */
	FUNC6(port, MAX310X_FLOWLVL_REG,
			   FUNC1(48) | FUNC0(96));

	/* Clear IRQ status register */
	FUNC4(port, MAX310X_IRQSTS_REG);

	/* Enable RX, TX, CTS change interrupts */
	val = MAX310X_IRQ_RXEMPTY_BIT | MAX310X_IRQ_TXEMPTY_BIT;
	FUNC6(port, MAX310X_IRQEN_REG, val | MAX310X_IRQ_CTS_BIT);

	return 0;
}