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
struct serial_rs485 {int flags; void* delay_rts_after_send; void* delay_rts_before_send; } ;
struct uart_port {struct serial_rs485 rs485; } ;
struct uart_8250_port {int dummy; } ;

/* Variables and functions */
 int SER_RS485_ENABLED ; 
 void* FUNC0 (void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_8250_port*) ; 
 int FUNC2 (struct uart_8250_port*) ; 
 struct uart_8250_port* FUNC3 (struct uart_port*) ; 

__attribute__((used)) static int FUNC4(struct uart_port *port,
				  struct serial_rs485 *rs485)
{
	struct uart_8250_port *up = FUNC3(port);

	/* Clamp the delays to [0, 100ms] */
	rs485->delay_rts_before_send = FUNC0(rs485->delay_rts_before_send, 100U);
	rs485->delay_rts_after_send  = FUNC0(rs485->delay_rts_after_send, 100U);

	port->rs485 = *rs485;

	/*
	 * Both serial8250_em485_init and serial8250_em485_destroy
	 * are idempotent
	 */
	if (rs485->flags & SER_RS485_ENABLED) {
		int ret = FUNC2(up);

		if (ret) {
			rs485->flags &= ~SER_RS485_ENABLED;
			port->rs485.flags &= ~SER_RS485_ENABLED;
		}
		return ret;
	}

	FUNC1(up);

	return 0;
}