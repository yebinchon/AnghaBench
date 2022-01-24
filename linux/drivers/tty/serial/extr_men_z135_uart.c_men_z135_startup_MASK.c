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
struct uart_port {scalar_t__ membase; } ;
struct men_z135_port {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int MEN_Z135_ALL_IRQS ; 
 scalar_t__ MEN_Z135_CONF_REG ; 
 int MEN_Z135_IER_TXCIEN ; 
 scalar_t__ MEN_Z135_TIMEOUT ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int FUNC2 (struct men_z135_port*) ; 
 int rx_timeout ; 
 int rxlvl ; 
 struct men_z135_port* FUNC3 (struct uart_port*) ; 
 int txlvl ; 

__attribute__((used)) static int FUNC4(struct uart_port *port)
{
	struct men_z135_port *uart = FUNC3(port);
	int err;
	u32 conf_reg = 0;

	err = FUNC2(uart);
	if (err)
		return -ENODEV;

	conf_reg = FUNC0(port->membase + MEN_Z135_CONF_REG);

	/* Activate all but TX space available IRQ */
	conf_reg |= MEN_Z135_ALL_IRQS & ~MEN_Z135_IER_TXCIEN;
	conf_reg &= ~(0xff << 16);
	conf_reg |= (txlvl << 16);
	conf_reg |= (rxlvl << 20);

	FUNC1(conf_reg, port->membase + MEN_Z135_CONF_REG);

	if (rx_timeout)
		FUNC1(rx_timeout, port->membase + MEN_Z135_TIMEOUT);

	return 0;
}