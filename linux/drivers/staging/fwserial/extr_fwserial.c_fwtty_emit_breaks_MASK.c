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
struct work_struct {int dummy; } ;
struct TYPE_2__ {int brk; } ;
struct fwtty_port {unsigned long break_last; unsigned long cps; int mstatus; TYPE_1__ icount; int /*<<< orphan*/  emit_breaks; int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FREQ_BREAKS ; 
 unsigned long HZ ; 
 int /*<<< orphan*/  TTY_BREAK ; 
 int UART_LSR_BI ; 
 int /*<<< orphan*/  emit_breaks ; 
 int /*<<< orphan*/  FUNC0 (struct fwtty_port*,char*,int) ; 
 unsigned long jiffies ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct work_struct*) ; 
 struct fwtty_port* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct work_struct *work)
{
	struct fwtty_port *port = FUNC4(FUNC3(work), emit_breaks);
	static const char buf[16];
	unsigned long now = jiffies;
	unsigned long elapsed = now - port->break_last;
	int n, t, c, brk = 0;

	/* generate breaks at the line rate (but at least 1) */
	n = (elapsed * port->cps) / HZ + 1;
	port->break_last = now;

	FUNC0(port, "sending %d brks\n", n);

	while (n) {
		t = FUNC1(n, 16);
		c = FUNC6(&port->port, buf,
						      TTY_BREAK, t);
		n -= c;
		brk += c;
		if (c < t)
			break;
	}
	FUNC5(&port->port);

	if (port->mstatus & (UART_LSR_BI << 24))
		FUNC2(&port->emit_breaks, FREQ_BREAKS);
	port->icount.brk += brk;
}