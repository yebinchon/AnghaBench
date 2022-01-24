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
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline unsigned int FUNC2(struct uart_txx9_port *up, int offset)
{
	switch (up->port.iotype) {
	default:
		return FUNC0(up->port.membase + offset);
	case UPIO_PORT:
		return FUNC1(up->port.iobase + offset);
	}
}