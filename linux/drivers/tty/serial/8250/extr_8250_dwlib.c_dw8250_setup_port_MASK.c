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
struct uart_port {int /*<<< orphan*/  fifosize; int /*<<< orphan*/  flags; int /*<<< orphan*/  type; int /*<<< orphan*/  set_divisor; int /*<<< orphan*/  get_divisor; struct dw8250_port_data* private_data; int /*<<< orphan*/  dev; } ;
struct uart_8250_port {int /*<<< orphan*/  capabilities; } ;
struct dw8250_port_data {int /*<<< orphan*/  dlf_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  DW_UART_CPR ; 
 int DW_UART_CPR_AFCE_MODE ; 
 int DW_UART_CPR_FIFO_MODE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DW_UART_CPR_SIR_MODE ; 
 int /*<<< orphan*/  DW_UART_DLF ; 
 int /*<<< orphan*/  DW_UART_UCV ; 
 int /*<<< orphan*/  PORT_16550A ; 
 int /*<<< orphan*/  UART_CAP_AFE ; 
 int /*<<< orphan*/  UART_CAP_FIFO ; 
 int /*<<< orphan*/  UART_CAP_IRDA ; 
 int /*<<< orphan*/  UPF_FIXED_TYPE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  dw8250_get_divisor ; 
 int FUNC2 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dw8250_set_divisor ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct uart_8250_port* FUNC5 (struct uart_port*) ; 

void FUNC6(struct uart_port *p)
{
	struct uart_8250_port *up = FUNC5(p);
	u32 reg;

	/*
	 * If the Component Version Register returns zero, we know that
	 * ADDITIONAL_FEATURES are not enabled. No need to go any further.
	 */
	reg = FUNC2(p, DW_UART_UCV);
	if (!reg)
		return;

	FUNC1(p->dev, "Designware UART version %c.%c%c\n",
		(reg >> 24) & 0xff, (reg >> 16) & 0xff, (reg >> 8) & 0xff);

	FUNC3(p, DW_UART_DLF, ~0U);
	reg = FUNC2(p, DW_UART_DLF);
	FUNC3(p, DW_UART_DLF, 0);

	if (reg) {
		struct dw8250_port_data *d = p->private_data;

		d->dlf_size = FUNC4(reg);
		p->get_divisor = dw8250_get_divisor;
		p->set_divisor = dw8250_set_divisor;
	}

	reg = FUNC2(p, DW_UART_CPR);
	if (!reg)
		return;

	/* Select the type based on FIFO */
	if (reg & DW_UART_CPR_FIFO_MODE) {
		p->type = PORT_16550A;
		p->flags |= UPF_FIXED_TYPE;
		p->fifosize = FUNC0(reg);
		up->capabilities = UART_CAP_FIFO;
	}

	if (reg & DW_UART_CPR_AFCE_MODE)
		up->capabilities |= UART_CAP_AFE;

	if (reg & DW_UART_CPR_SIR_MODE)
		up->capabilities |= UART_CAP_IRDA;
}