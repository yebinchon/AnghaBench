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
 scalar_t__ SE_GENI_S_IRQ_EN ; 
 int S_GENI_CMD_ACTIVE ; 
 int S_RX_FIFO_LAST_EN ; 
 int S_RX_FIFO_WATERMARK_EN ; 
 int /*<<< orphan*/  UART_START_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*) ; 
 int FUNC2 (scalar_t__) ; 
 struct qcom_geni_serial_port* FUNC3 (struct uart_port*,struct uart_port*) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct uart_port *uport)
{
	u32 irq_en;
	u32 status;
	struct qcom_geni_serial_port *port = FUNC3(uport, uport);

	status = FUNC2(uport->membase + SE_GENI_STATUS);
	if (status & S_GENI_CMD_ACTIVE)
		FUNC1(uport);

	FUNC0(&port->se, UART_START_READ, 0);

	irq_en = FUNC2(uport->membase + SE_GENI_S_IRQ_EN);
	irq_en |= S_RX_FIFO_WATERMARK_EN | S_RX_FIFO_LAST_EN;
	FUNC4(irq_en, uport->membase + SE_GENI_S_IRQ_EN);

	irq_en = FUNC2(uport->membase + SE_GENI_M_IRQ_EN);
	irq_en |= M_RX_FIFO_WATERMARK_EN | M_RX_FIFO_LAST_EN;
	FUNC4(irq_en, uport->membase + SE_GENI_M_IRQ_EN);
}