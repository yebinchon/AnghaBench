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
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  brk; int /*<<< orphan*/  parity; int /*<<< orphan*/  overrun; } ;
struct uart_port {TYPE_2__ icount; scalar_t__ membase; int /*<<< orphan*/  lock; scalar_t__ suspended; TYPE_1__* state; } ;
struct tty_port {int dummy; } ;
struct qcom_geni_serial_port {int brk; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_3__ {struct tty_port port; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int M_CMD_DONE_EN ; 
 int M_GENI_CMD_ACTIVE ; 
 int M_ILLEGAL_CMD_EN ; 
 int M_TX_FIFO_WATERMARK_EN ; 
 scalar_t__ SE_GENI_M_IRQ_CLEAR ; 
 scalar_t__ SE_GENI_M_IRQ_EN ; 
 scalar_t__ SE_GENI_M_IRQ_STATUS ; 
 scalar_t__ SE_GENI_STATUS ; 
 scalar_t__ SE_GENI_S_IRQ_CLEAR ; 
 scalar_t__ SE_GENI_S_IRQ_STATUS ; 
 int S_GP_IRQ_0_EN ; 
 int S_GP_IRQ_1_EN ; 
 int S_GP_IRQ_2_EN ; 
 int S_GP_IRQ_3_EN ; 
 int S_RX_FIFO_LAST_EN ; 
 int S_RX_FIFO_WATERMARK_EN ; 
 int S_RX_FIFO_WR_ERR_EN ; 
 int /*<<< orphan*/  TTY_OVERRUN ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*,int,int) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct qcom_geni_serial_port* FUNC5 (struct uart_port*,struct uart_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct tty_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct uart_port*,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC9(int isr, void *dev)
{
	u32 m_irq_en;
	u32 m_irq_status;
	u32 s_irq_status;
	u32 geni_status;
	struct uart_port *uport = dev;
	unsigned long flags;
	bool drop_rx = false;
	struct tty_port *tport = &uport->state->port;
	struct qcom_geni_serial_port *port = FUNC5(uport, uport);

	if (uport->suspended)
		return IRQ_NONE;

	FUNC4(&uport->lock, flags);
	m_irq_status = FUNC3(uport->membase + SE_GENI_M_IRQ_STATUS);
	s_irq_status = FUNC3(uport->membase + SE_GENI_S_IRQ_STATUS);
	geni_status = FUNC3(uport->membase + SE_GENI_STATUS);
	m_irq_en = FUNC3(uport->membase + SE_GENI_M_IRQ_EN);
	FUNC8(m_irq_status, uport->membase + SE_GENI_M_IRQ_CLEAR);
	FUNC8(s_irq_status, uport->membase + SE_GENI_S_IRQ_CLEAR);

	if (FUNC0(m_irq_status & M_ILLEGAL_CMD_EN))
		goto out_unlock;

	if (s_irq_status & S_RX_FIFO_WR_ERR_EN) {
		uport->icount.overrun++;
		FUNC6(tport, 0, TTY_OVERRUN);
	}

	if (m_irq_status & m_irq_en & (M_TX_FIFO_WATERMARK_EN | M_CMD_DONE_EN))
		FUNC2(uport, m_irq_status & M_CMD_DONE_EN,
					geni_status & M_GENI_CMD_ACTIVE);

	if (s_irq_status & S_GP_IRQ_0_EN || s_irq_status & S_GP_IRQ_1_EN) {
		if (s_irq_status & S_GP_IRQ_0_EN)
			uport->icount.parity++;
		drop_rx = true;
	} else if (s_irq_status & S_GP_IRQ_2_EN ||
					s_irq_status & S_GP_IRQ_3_EN) {
		uport->icount.brk++;
		port->brk = true;
	}

	if (s_irq_status & S_RX_FIFO_WATERMARK_EN ||
					s_irq_status & S_RX_FIFO_LAST_EN)
		FUNC1(uport, drop_rx);

out_unlock:
	FUNC7(uport, flags);

	return IRQ_HANDLED;
}