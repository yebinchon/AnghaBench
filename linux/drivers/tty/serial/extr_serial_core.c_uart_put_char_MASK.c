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
struct circ_buf {unsigned char* buf; size_t head; } ;
struct uart_state {struct circ_buf xmit; } ;
struct uart_port {int dummy; } ;
struct tty_struct {struct uart_state* driver_data; } ;

/* Variables and functions */
 int UART_XMIT_SIZE ; 
 scalar_t__ FUNC0 (struct circ_buf*) ; 
 struct uart_port* FUNC1 (struct uart_state*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct tty_struct *tty, unsigned char c)
{
	struct uart_state *state = tty->driver_data;
	struct uart_port *port;
	struct circ_buf *circ;
	unsigned long flags;
	int ret = 0;

	circ = &state->xmit;
	port = FUNC1(state, flags);
	if (!circ->buf) {
		FUNC2(port, flags);
		return 0;
	}

	if (port && FUNC0(circ) != 0) {
		circ->buf[circ->head] = c;
		circ->head = (circ->head + 1) & (UART_XMIT_SIZE - 1);
		ret = 1;
	}
	FUNC2(port, flags);
	return ret;
}