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
struct uart_port {int /*<<< orphan*/  lock; } ;
struct asc_port {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASC_CTL ; 
 int ASC_CTL_RUN ; 
#define  UART_PM_STATE_OFF 129 
#define  UART_PM_STATE_ON 128 
 int FUNC0 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 struct asc_port* FUNC6 (struct uart_port*) ; 

__attribute__((used)) static void FUNC7(struct uart_port *port, unsigned int state,
		unsigned int oldstate)
{
	struct asc_port *ascport = FUNC6(port);
	unsigned long flags = 0;
	u32 ctl;

	switch (state) {
	case UART_PM_STATE_ON:
		FUNC3(ascport->clk);
		break;
	case UART_PM_STATE_OFF:
		/*
		 * Disable the ASC baud rate generator, which is as close as
		 * we can come to turning it off. Note this is not called with
		 * the port spinlock held.
		 */
		FUNC4(&port->lock, flags);
		ctl = FUNC0(port, ASC_CTL) & ~ASC_CTL_RUN;
		FUNC1(port, ASC_CTL, ctl);
		FUNC5(&port->lock, flags);
		FUNC2(ascport->clk);
		break;
	}
}