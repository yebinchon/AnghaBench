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
struct uart_port {int dummy; } ;
struct sci_port {int dummy; } ;

/* Variables and functions */
#define  UART_PM_STATE_OFF 128 
 int /*<<< orphan*/  FUNC0 (struct sci_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct sci_port*) ; 
 struct sci_port* FUNC2 (struct uart_port*) ; 

__attribute__((used)) static void FUNC3(struct uart_port *port, unsigned int state,
		   unsigned int oldstate)
{
	struct sci_port *sci_port = FUNC2(port);

	switch (state) {
	case UART_PM_STATE_OFF:
		FUNC0(sci_port);
		break;
	default:
		FUNC1(sci_port);
		break;
	}
}