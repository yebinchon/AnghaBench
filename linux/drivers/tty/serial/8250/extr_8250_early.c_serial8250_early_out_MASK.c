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
struct uart_port {int regshift; int iotype; int /*<<< orphan*/  (* serial_out ) (struct uart_port*,int,int) ;int /*<<< orphan*/  iobase; int /*<<< orphan*/  membase; } ;

/* Variables and functions */
#define  UPIO_AU 133 
#define  UPIO_MEM 132 
#define  UPIO_MEM16 131 
#define  UPIO_MEM32 130 
#define  UPIO_MEM32BE 129 
#define  UPIO_PORT 128 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct uart_port *port, int offset, int value)
{
	int reg_offset = offset;
	offset <<= port->regshift;

	switch (port->iotype) {
	case UPIO_MEM:
		FUNC3(value, port->membase + offset);
		break;
	case UPIO_MEM16:
		FUNC5(value, port->membase + offset);
		break;
	case UPIO_MEM32:
		FUNC4(value, port->membase + offset);
		break;
	case UPIO_MEM32BE:
		FUNC0(value, port->membase + offset);
		break;
	case UPIO_PORT:
		FUNC1(value, port->iobase + offset);
		break;
	case UPIO_AU:
		port->serial_out(port, reg_offset, value);
		break;
	}
}