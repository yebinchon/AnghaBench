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
struct uart_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RDA_UART_CMD_SET ; 
 int RDA_UART_CTS ; 
 int RDA_UART_RTS ; 
 int /*<<< orphan*/  RDA_UART_STATUS ; 
 unsigned int TIOCM_CTS ; 
 unsigned int TIOCM_RTS ; 
 int FUNC0 (struct uart_port*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC1(struct uart_port *port)
{
	unsigned int mctrl = 0;
	u32 cmd_set, status;

	cmd_set = FUNC0(port, RDA_UART_CMD_SET);
	status = FUNC0(port, RDA_UART_STATUS);
	if (cmd_set & RDA_UART_RTS)
		mctrl |= TIOCM_RTS;
	if (!(status & RDA_UART_CTS))
		mctrl |= TIOCM_CTS;

	return mctrl;
}