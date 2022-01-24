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
struct serial_rs485 {int flags; } ;
struct uart_port {int /*<<< orphan*/  lock; struct serial_rs485 rs485; } ;

/* Variables and functions */
 int SC16IS7XX_EFCR_AUTO_RS485_BIT ; 
 int /*<<< orphan*/  SC16IS7XX_EFCR_REG ; 
 int SC16IS7XX_EFCR_RTS_INVERT_BIT ; 
 int SER_RS485_ENABLED ; 
 int SER_RS485_RTS_AFTER_SEND ; 
 int /*<<< orphan*/  FUNC0 (struct uart_port*,int /*<<< orphan*/ ,int const,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct uart_port *port)
{
	const u32 mask = SC16IS7XX_EFCR_AUTO_RS485_BIT |
			 SC16IS7XX_EFCR_RTS_INVERT_BIT;
	u32 efcr = 0;
	struct serial_rs485 *rs485 = &port->rs485;
	unsigned long irqflags;

	FUNC1(&port->lock, irqflags);
	if (rs485->flags & SER_RS485_ENABLED) {
		efcr |=	SC16IS7XX_EFCR_AUTO_RS485_BIT;

		if (rs485->flags & SER_RS485_RTS_AFTER_SEND)
			efcr |= SC16IS7XX_EFCR_RTS_INVERT_BIT;
	}
	FUNC2(&port->lock, irqflags);

	FUNC0(port, SC16IS7XX_EFCR_REG, mask, efcr);
}