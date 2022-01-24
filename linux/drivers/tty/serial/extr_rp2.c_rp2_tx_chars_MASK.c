#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct TYPE_7__ {int /*<<< orphan*/  tx; } ;
struct TYPE_8__ {TYPE_2__ icount; scalar_t__ x_char; TYPE_1__* state; } ;
struct rp2_uart_port {TYPE_3__ port; scalar_t__ base; } ;
struct circ_buf {size_t tail; scalar_t__* buf; } ;
struct TYPE_6__ {struct circ_buf xmit; } ;

/* Variables and functions */
 scalar_t__ FIFO_SIZE ; 
 scalar_t__ RP2_DATA_BYTE ; 
 scalar_t__ RP2_TX_FIFO_COUNT ; 
 int UART_XMIT_SIZE ; 
 scalar_t__ WAKEUP_CHARS ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (struct circ_buf*) ; 
 scalar_t__ FUNC3 (struct circ_buf*) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct rp2_uart_port *up)
{
	u16 max_tx = FIFO_SIZE - FUNC0(up->base + RP2_TX_FIFO_COUNT);
	struct circ_buf *xmit = &up->port.state->xmit;

	if (FUNC4(&up->port)) {
		FUNC1(&up->port);
		return;
	}

	for (; max_tx != 0; max_tx--) {
		if (up->port.x_char) {
			FUNC6(up->port.x_char, up->base + RP2_DATA_BYTE);
			up->port.x_char = 0;
			up->port.icount.tx++;
			continue;
		}
		if (FUNC3(xmit)) {
			FUNC1(&up->port);
			break;
		}
		FUNC6(xmit->buf[xmit->tail], up->base + RP2_DATA_BYTE);
		xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
		up->port.icount.tx++;
	}

	if (FUNC2(xmit) < WAKEUP_CHARS)
		FUNC5(&up->port);
}