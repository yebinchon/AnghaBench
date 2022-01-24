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
struct TYPE_2__ {int iotype; int /*<<< orphan*/  iobase; int /*<<< orphan*/  membase; } ;
struct uart_txx9_port {TYPE_1__ port; } ;

/* Variables and functions */
#define  UPIO_PORT 128 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC2(struct uart_txx9_port *up, int offset, int value)
{
	switch (up->port.iotype) {
	default:
		FUNC0(value, up->port.membase + offset);
		break;
	case UPIO_PORT:
		FUNC1(value, up->port.iobase + offset);
		break;
	}
}