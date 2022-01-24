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
typedef  int u32 ;
struct uart_port {scalar_t__ membase; } ;
struct qcom_geni_serial_port {int /*<<< orphan*/  se; } ;

/* Variables and functions */
 int M_CMD_ABORT_EN ; 
 int M_CMD_CANCEL_EN ; 
 int M_CMD_DONE_EN ; 
 int M_GENI_CMD_ACTIVE ; 
 int M_TX_FIFO_WATERMARK_EN ; 
 scalar_t__ SE_GENI_M_IRQ_CLEAR ; 
 scalar_t__ SE_GENI_M_IRQ_EN ; 
 int /*<<< orphan*/  SE_GENI_M_IRQ_STATUS ; 
 scalar_t__ SE_GENI_STATUS ; 
 scalar_t__ SE_GENI_TX_WATERMARK_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (scalar_t__) ; 
 struct qcom_geni_serial_port* FUNC4 (struct uart_port*,struct uart_port*) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct uart_port *uport)
{
	u32 irq_en;
	u32 status;
	struct qcom_geni_serial_port *port = FUNC4(uport, uport);

	irq_en = FUNC3(uport->membase + SE_GENI_M_IRQ_EN);
	irq_en &= ~(M_CMD_DONE_EN | M_TX_FIFO_WATERMARK_EN);
	FUNC5(0, uport->membase + SE_GENI_TX_WATERMARK_REG);
	FUNC5(irq_en, uport->membase + SE_GENI_M_IRQ_EN);
	status = FUNC3(uport->membase + SE_GENI_STATUS);
	/* Possible stop tx is called multiple times. */
	if (!(status & M_GENI_CMD_ACTIVE))
		return;

	FUNC1(&port->se);
	if (!FUNC2(uport, SE_GENI_M_IRQ_STATUS,
						M_CMD_CANCEL_EN, true)) {
		FUNC0(&port->se);
		FUNC2(uport, SE_GENI_M_IRQ_STATUS,
						M_CMD_ABORT_EN, true);
		FUNC5(M_CMD_ABORT_EN, uport->membase + SE_GENI_M_IRQ_CLEAR);
	}
	FUNC5(M_CMD_CANCEL_EN, uport->membase + SE_GENI_M_IRQ_CLEAR);
}