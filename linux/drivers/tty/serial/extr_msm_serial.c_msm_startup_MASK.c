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
struct uart_port {int line; int fifosize; int /*<<< orphan*/  irq; } ;
struct TYPE_2__ {int /*<<< orphan*/  mapbase; } ;
struct msm_port {int /*<<< orphan*/  clk; int /*<<< orphan*/  pclk; scalar_t__ is_uartdm; int /*<<< orphan*/  name; TYPE_1__ uart; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_TRIGGER_HIGH ; 
 unsigned int UART_DM_MR1_AUTO_RFR_LEVEL1 ; 
 int /*<<< orphan*/  UART_MR1 ; 
 unsigned int UART_MR1_AUTO_RFR_LEVEL0 ; 
 unsigned int UART_MR1_AUTO_RFR_LEVEL1 ; 
 struct msm_port* FUNC0 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*) ; 
 unsigned int FUNC4 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct msm_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct msm_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct msm_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  msm_uart_irq ; 
 int /*<<< orphan*/  FUNC8 (struct uart_port*,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uart_port*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,char*,int) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(struct uart_port *port)
{
	struct msm_port *msm_port = FUNC0(port);
	unsigned int data, rfr_level, mask;
	int ret;

	FUNC10(msm_port->name, sizeof(msm_port->name),
		 "msm_serial%d", port->line);

	FUNC3(port);

	if (FUNC2(port->fifosize > 12))
		rfr_level = port->fifosize - 12;
	else
		rfr_level = port->fifosize;

	/* set automatic RFR level */
	data = FUNC4(port, UART_MR1);

	if (msm_port->is_uartdm)
		mask = UART_DM_MR1_AUTO_RFR_LEVEL1;
	else
		mask = UART_MR1_AUTO_RFR_LEVEL1;

	data &= ~mask;
	data &= ~UART_MR1_AUTO_RFR_LEVEL0;
	data |= mask & (rfr_level << 2);
	data |= UART_MR1_AUTO_RFR_LEVEL0 & rfr_level;
	FUNC8(port, data, UART_MR1);

	if (msm_port->is_uartdm) {
		FUNC7(msm_port, msm_port->uart.mapbase);
		FUNC6(msm_port, msm_port->uart.mapbase);
	}

	ret = FUNC9(port->irq, msm_uart_irq, IRQF_TRIGGER_HIGH,
			  msm_port->name, port);
	if (FUNC11(ret))
		goto err_irq;

	return 0;

err_irq:
	if (msm_port->is_uartdm)
		FUNC5(msm_port);

	FUNC1(msm_port->pclk);
	FUNC1(msm_port->clk);

	return ret;
}