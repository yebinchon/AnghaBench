#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned long rx; } ;
struct uart_port {scalar_t__ sysrq; TYPE_2__* state; TYPE_1__ icount; } ;
struct TYPE_4__ {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 long CON_BREAK ; 
 long CON_HUP ; 
 long HV_EOK ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 unsigned long FUNC0 (scalar_t__*) ; 
 scalar_t__* con_read_page ; 
 int hung_up ; 
 long FUNC1 (unsigned long,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__*,unsigned long) ; 
 scalar_t__ FUNC4 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_port*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_port*,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct uart_port *port)
{
	static int saw_console_brk;
	int limit = 10000;

	while (limit-- > 0) {
		unsigned long ra = FUNC0(con_read_page);
		unsigned long bytes_read, i;
		long stat = FUNC1(ra, PAGE_SIZE, &bytes_read);

		if (stat != HV_EOK) {
			bytes_read = 0;

			if (stat == CON_BREAK) {
				if (saw_console_brk)
					FUNC2();

				if (FUNC4(port))
					continue;
				saw_console_brk = 1;
				*con_read_page = 0;
				bytes_read = 1;
			} else if (stat == CON_HUP) {
				hung_up = 1;
				FUNC5(port, 0);
				continue;
			} else {
				/* HV_EWOULDBLOCK, etc.  */
				break;
			}
		}

		if (hung_up) {
			hung_up = 0;
			FUNC5(port, 1);
		}

		if (port->sysrq != 0 &&  *con_read_page) {
			for (i = 0; i < bytes_read; i++)
				FUNC6(port, con_read_page[i]);
			saw_console_brk = 0;
		}

		if (port->state == NULL)
			continue;

		port->icount.rx += bytes_read;

		FUNC3(&port->state->port, con_read_page,
				bytes_read);
	}

	return saw_console_brk;
}