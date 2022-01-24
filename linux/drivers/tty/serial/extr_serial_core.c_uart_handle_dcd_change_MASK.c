#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  dcd; } ;
struct uart_port {TYPE_2__ icount; int /*<<< orphan*/  lock; TYPE_3__* state; } ;
struct tty_struct {int dummy; } ;
struct tty_port {int /*<<< orphan*/  open_wait; struct tty_struct* tty; } ;
struct tty_ldisc {TYPE_1__* ops; } ;
struct TYPE_6__ {struct tty_port port; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* dcd_change ) (struct tty_struct*,unsigned int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_ldisc*) ; 
 struct tty_ldisc* FUNC4 (struct tty_struct*) ; 
 scalar_t__ FUNC5 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct uart_port *uport, unsigned int status)
{
	struct tty_port *port = &uport->state->port;
	struct tty_struct *tty = port->tty;
	struct tty_ldisc *ld;

	FUNC0(&uport->lock);

	if (tty) {
		ld = FUNC4(tty);
		if (ld) {
			if (ld->ops->dcd_change)
				ld->ops->dcd_change(tty, status);
			FUNC3(ld);
		}
	}

	uport->icount.dcd++;

	if (FUNC5(uport)) {
		if (status)
			FUNC6(&port->open_wait);
		else if (tty)
			FUNC2(tty);
	}
}