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
struct tty_struct {int index; struct tty_struct* link; TYPE_2__* port; int /*<<< orphan*/  driver; TYPE_1__* ops; } ;
struct TYPE_4__ {int /*<<< orphan*/ * itty; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* shutdown ) (struct tty_struct*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_struct*) ; 
 int /*<<< orphan*/  tty_mutex ; 
 int /*<<< orphan*/  FUNC6 (struct tty_struct*) ; 

__attribute__((used)) static void FUNC7(struct tty_struct *tty, int idx)
{
	/* This should always be true but check for the moment */
	FUNC0(tty->index != idx);
	FUNC0(!FUNC1(&tty_mutex));
	if (tty->ops->shutdown)
		tty->ops->shutdown(tty);
	FUNC6(tty);
	FUNC4(tty->driver, tty);
	tty->port->itty = NULL;
	if (tty->link)
		tty->link->port->itty = NULL;
	FUNC3(tty->port);
	if (tty->link)
		FUNC3(tty->link->port);

	FUNC5(tty->link);
	FUNC5(tty);
}