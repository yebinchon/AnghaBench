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
typedef  scalar_t__ uint8_t ;
struct serial_rs485 {int flags; int delay_rts_before_send; int delay_rts_after_send; struct serial_rs485* padding; } ;
struct uart_port {struct serial_rs485 rs485; struct fintek_8250* private_data; } ;
struct fintek_8250 {int /*<<< orphan*/  base_port; scalar_t__ index; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  LDN ; 
 int /*<<< orphan*/  RS485 ; 
 scalar_t__ RS485_URA ; 
 scalar_t__ RTS_INVERT ; 
 scalar_t__ RXW4C_IRA ; 
 int SER_RS485_ENABLED ; 
 int SER_RS485_RTS_AFTER_SEND ; 
 int SER_RS485_RTS_ON_SEND ; 
 scalar_t__ TXW4C_IRA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct serial_rs485*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct fintek_8250*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct uart_port *port,
			      struct serial_rs485 *rs485)
{
	uint8_t config = 0;
	struct fintek_8250 *pdata = port->private_data;

	if (!pdata)
		return -EINVAL;

	/* Hardware do not support same RTS level on send and receive */
	if (!(rs485->flags & SER_RS485_RTS_ON_SEND) ==
			!(rs485->flags & SER_RS485_RTS_AFTER_SEND))
		return -EINVAL;

	if (rs485->flags & SER_RS485_ENABLED) {
		FUNC2(rs485->padding, 0, sizeof(rs485->padding));
		config |= RS485_URA;
	} else {
		FUNC2(rs485, 0, sizeof(*rs485));
	}

	rs485->flags &= SER_RS485_ENABLED | SER_RS485_RTS_ON_SEND |
			SER_RS485_RTS_AFTER_SEND;

	/* Only the first port supports delays */
	if (pdata->index) {
		rs485->delay_rts_before_send = 0;
		rs485->delay_rts_after_send = 0;
	}

	if (rs485->delay_rts_before_send) {
		rs485->delay_rts_before_send = 1;
		config |= TXW4C_IRA;
	}

	if (rs485->delay_rts_after_send) {
		rs485->delay_rts_after_send = 1;
		config |= RXW4C_IRA;
	}

	if (rs485->flags & SER_RS485_RTS_ON_SEND)
		config |= RTS_INVERT;

	if (FUNC0(pdata->base_port, pdata->key))
		return -EBUSY;

	FUNC3(pdata, LDN, pdata->index);
	FUNC3(pdata, RS485, config);
	FUNC1(pdata->base_port);

	port->rs485 = *rs485;

	return 0;
}