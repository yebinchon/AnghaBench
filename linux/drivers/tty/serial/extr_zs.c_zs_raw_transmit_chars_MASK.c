#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  tx; } ;
struct TYPE_7__ {TYPE_2__ icount; scalar_t__ x_char; TYPE_1__* state; } ;
struct zs_port {TYPE_3__ port; } ;
struct circ_buf {size_t tail; scalar_t__* buf; } ;
struct TYPE_5__ {struct circ_buf xmit; } ;

/* Variables and functions */
 int UART_XMIT_SIZE ; 
 scalar_t__ WAKEUP_CHARS ; 
 scalar_t__ FUNC0 (struct circ_buf*) ; 
 scalar_t__ FUNC1 (struct circ_buf*) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (struct zs_port*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct zs_port*) ; 

__attribute__((used)) static void FUNC6(struct zs_port *zport)
{
	struct circ_buf *xmit = &zport->port.state->xmit;

	/* XON/XOFF chars.  */
	if (zport->port.x_char) {
		FUNC4(zport, zport->port.x_char);
		zport->port.icount.tx++;
		zport->port.x_char = 0;
		return;
	}

	/* If nothing to do or stopped or hardware stopped.  */
	if (FUNC1(xmit) || FUNC2(&zport->port)) {
		FUNC5(zport);
		return;
	}

	/* Send char.  */
	FUNC4(zport, xmit->buf[xmit->tail]);
	xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
	zport->port.icount.tx++;

	if (FUNC0(xmit) < WAKEUP_CHARS)
		FUNC3(&zport->port);

	/* Are we are done?  */
	if (FUNC1(xmit))
		FUNC5(zport);
}