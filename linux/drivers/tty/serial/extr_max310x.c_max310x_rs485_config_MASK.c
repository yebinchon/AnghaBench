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
struct serial_rs485 {int delay_rts_before_send; int delay_rts_after_send; int flags; int /*<<< orphan*/  padding; } ;
struct uart_port {struct serial_rs485 rs485; } ;
struct max310x_one {int /*<<< orphan*/  rs_work; } ;

/* Variables and functions */
 int ERANGE ; 
 int SER_RS485_ENABLED ; 
 int SER_RS485_RTS_ON_SEND ; 
 int SER_RS485_RX_DURING_TX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct max310x_one* FUNC2 (struct uart_port*) ; 

__attribute__((used)) static int FUNC3(struct uart_port *port,
				struct serial_rs485 *rs485)
{
	struct max310x_one *one = FUNC2(port);

	if ((rs485->delay_rts_before_send > 0x0f) ||
	    (rs485->delay_rts_after_send > 0x0f))
		return -ERANGE;

	rs485->flags &= SER_RS485_RTS_ON_SEND | SER_RS485_RX_DURING_TX |
			SER_RS485_ENABLED;
	FUNC0(rs485->padding, 0, sizeof(rs485->padding));
	port->rs485 = *rs485;

	FUNC1(&one->rs_work);

	return 0;
}