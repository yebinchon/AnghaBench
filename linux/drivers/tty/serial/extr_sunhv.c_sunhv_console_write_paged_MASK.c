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
struct uart_port {int /*<<< orphan*/  lock; scalar_t__ sysrq; } ;
struct console {int dummy; } ;

/* Variables and functions */
 unsigned long HV_EOK ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  con_write_page ; 
 unsigned int FUNC1 (char const*,unsigned int,unsigned long*) ; 
 scalar_t__ oops_in_progress ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC5 (unsigned long,unsigned long,unsigned long*) ; 
 struct uart_port* sunhv_port ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct console *con, const char *s, unsigned n)
{
	struct uart_port *port = sunhv_port;
	unsigned long flags;
	int locked = 1;

	if (port->sysrq || oops_in_progress)
		locked = FUNC3(&port->lock, flags);
	else
		FUNC2(&port->lock, flags);

	while (n > 0) {
		unsigned long ra = FUNC0(con_write_page);
		unsigned long page_bytes;
		unsigned int cpy = FUNC1(s, n,
						       &page_bytes);

		n -= cpy;
		s += cpy;
		while (page_bytes > 0) {
			unsigned long written;
			int limit = 1000000;

			while (limit--) {
				unsigned long stat;

				stat = FUNC5(ra, page_bytes,
						       &written);
				if (stat == HV_EOK)
					break;
				FUNC6(1);
			}
			if (limit < 0)
				break;
			page_bytes -= written;
			ra += written;
		}
	}

	if (locked)
		FUNC4(&port->lock, flags);
}