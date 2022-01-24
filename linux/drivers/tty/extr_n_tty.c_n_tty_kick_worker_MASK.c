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
struct tty_struct {TYPE_1__* port; int /*<<< orphan*/  flags; struct n_tty_data* disc_data; } ;
struct n_tty_data {scalar_t__ no_room; } ;
struct TYPE_2__ {int /*<<< orphan*/ * itty; } ;

/* Variables and functions */
 int /*<<< orphan*/  TTY_LDISC_HALTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct tty_struct *tty)
{
	struct n_tty_data *ldata = tty->disc_data;

	/* Did the input worker stop? Restart it */
	if (FUNC3(ldata->no_room)) {
		ldata->no_room = 0;

		FUNC0(tty->port->itty == NULL,
				"scheduling with invalid itty\n");
		/* see if ldisc has been killed - if so, this means that
		 * even though the ldisc has been halted and ->buf.work
		 * cancelled, ->buf.work is about to be rescheduled
		 */
		FUNC0(FUNC1(TTY_LDISC_HALTED, &tty->flags),
			       "scheduling buffer work for halted ldisc\n");
		FUNC2(tty->port);
	}
}