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
 int M_RX_FIFO_LAST_EN ; 
 int M_RX_FIFO_WATERMARK_EN ; 
 scalar_t__ SE_GENI_M_IRQ_EN ; 
 scalar_t__ SE_GENI_STATUS ; 
 int /*<<< orphan*/  SE_GENI_S_CMD_CTRL_REG ; 
 scalar_t__ SE_GENI_S_IRQ_CLEAR ; 
 scalar_t__ SE_GENI_S_IRQ_EN ; 
 int S_CMD_DONE_EN ; 
 int S_GENI_CMD_ACTIVE ; 
 int /*<<< orphan*/  S_GENI_CMD_CANCEL ; 
 int S_RX_FIFO_LAST_EN ; 
 int S_RX_FIFO_WATERMARK_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (scalar_t__) ; 
 struct qcom_geni_serial_port* FUNC4 (struct uart_port*,struct uart_port*) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct uart_port *uport)
{
	u32 irq_en;
	u32 status;
	struct qcom_geni_serial_port *port = FUNC4(uport, uport);
	u32 irq_clear = S_CMD_DONE_EN;

	irq_en = FUNC3(uport->membase + SE_GENI_S_IRQ_EN);
	irq_en &= ~(S_RX_FIFO_WATERMARK_EN | S_RX_FIFO_LAST_EN);
	FUNC5(irq_en, uport->membase + SE_GENI_S_IRQ_EN);

	irq_en = FUNC3(uport->membase + SE_GENI_M_IRQ_EN);
	irq_en &= ~(M_RX_FIFO_WATERMARK_EN | M_RX_FIFO_LAST_EN);
	FUNC5(irq_en, uport->membase + SE_GENI_M_IRQ_EN);

	status = FUNC3(uport->membase + SE_GENI_STATUS);
	/* Possible stop rx is called multiple times. */
	if (!(status & S_GENI_CMD_ACTIVE))
		return;

	FUNC0(&port->se);
	FUNC2(uport, SE_GENI_S_CMD_CTRL_REG,
					S_GENI_CMD_CANCEL, false);
	status = FUNC3(uport->membase + SE_GENI_STATUS);
	FUNC5(irq_clear, uport->membase + SE_GENI_S_IRQ_CLEAR);
	if (status & S_GENI_CMD_ACTIVE)
		FUNC1(uport);
}