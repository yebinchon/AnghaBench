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
struct uart_port {int regshift; int iotype; unsigned int (* serial_in ) (struct uart_port*,int) ;int /*<<< orphan*/  iobase; int /*<<< orphan*/  membase; } ;

/* Variables and functions */
#define  UPIO_AU 133 
#define  UPIO_MEM 132 
#define  UPIO_MEM16 131 
#define  UPIO_MEM32 130 
#define  UPIO_MEM32BE 129 
#define  UPIO_PORT 128 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (struct uart_port*,int) ; 

__attribute__((used)) static unsigned int FUNC6(struct uart_port *port, int offset)
{
	int reg_offset = offset;
	offset <<= port->regshift;

	switch (port->iotype) {
	case UPIO_MEM:
		return FUNC2(port->membase + offset);
	case UPIO_MEM16:
		return FUNC4(port->membase + offset);
	case UPIO_MEM32:
		return FUNC3(port->membase + offset);
	case UPIO_MEM32BE:
		return FUNC1(port->membase + offset);
	case UPIO_PORT:
		return FUNC0(port->iobase + offset);
	case UPIO_AU:
		return port->serial_in(port, reg_offset);
	default:
		return 0;
	}
}