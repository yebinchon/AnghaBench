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
struct uart_port {int /*<<< orphan*/  type; } ;
struct sbd_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PORT_SB1250_DUART ; 
 int UART_CONFIG_TYPE ; 
 int /*<<< orphan*/  FUNC0 (struct sbd_port*) ; 
 scalar_t__ FUNC1 (struct uart_port*) ; 
 struct sbd_port* FUNC2 (struct uart_port*) ; 

__attribute__((used)) static void FUNC3(struct uart_port *uport, int flags)
{
	struct sbd_port *sport = FUNC2(uport);

	if (flags & UART_CONFIG_TYPE) {
		if (FUNC1(uport))
			return;

		uport->type = PORT_SB1250_DUART;

		FUNC0(sport);
	}
}