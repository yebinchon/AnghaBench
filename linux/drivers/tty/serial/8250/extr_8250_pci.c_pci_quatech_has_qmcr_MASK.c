#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_2__ {unsigned long iobase; } ;
struct uart_8250_port {TYPE_1__ port; } ;

/* Variables and functions */
 scalar_t__ UART_LCR ; 
 scalar_t__ UART_SCR ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct uart_8250_port *port)
{
	unsigned long base = port->port.iobase;
	u8 LCR, val;

	LCR = FUNC0(base + UART_LCR);
	FUNC1(0xBF, base + UART_LCR);
	val = FUNC0(base + UART_SCR);
	if (val & 0x20) {
		FUNC1(0x80, UART_LCR);
		if (!(FUNC0(UART_SCR) & 0x20)) {
			FUNC1(LCR, base + UART_LCR);
			return 1;
		}
	}
	return 0;
}