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
struct TYPE_2__ {int /*<<< orphan*/  tx; } ;
struct uart_port {TYPE_1__ icount; } ;
struct circ_buf {size_t tail; int /*<<< orphan*/ * buf; } ;

/* Variables and functions */
 long HV_EOK ; 
 int UART_XMIT_SIZE ; 
 long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct circ_buf*) ; 

__attribute__((used)) static void FUNC2(struct uart_port *port, struct circ_buf *xmit)
{
	while (!FUNC1(xmit)) {
		long status = FUNC0(xmit->buf[xmit->tail]);

		if (status != HV_EOK)
			break;

		xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
		port->icount.tx++;
	}
}