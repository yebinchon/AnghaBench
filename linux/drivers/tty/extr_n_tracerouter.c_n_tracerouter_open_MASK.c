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
struct tty_struct {int /*<<< orphan*/  receive_room; TYPE_1__* disc_data; } ;
struct TYPE_2__ {int opencalled; int /*<<< orphan*/ * kref_tty; } ;

/* Variables and functions */
 int EEXIST ; 
 int EFAULT ; 
 int /*<<< orphan*/  RECEIVE_ROOM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  routelock ; 
 TYPE_1__* tr_data ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*) ; 
 int /*<<< orphan*/ * FUNC3 (struct tty_struct*) ; 

__attribute__((used)) static int FUNC4(struct tty_struct *tty)
{
	int retval = -EEXIST;

	FUNC0(&routelock);
	if (tr_data->opencalled == 0) {

		tr_data->kref_tty = FUNC3(tty);
		if (tr_data->kref_tty == NULL) {
			retval = -EFAULT;
		} else {
			tr_data->opencalled = 1;
			tty->disc_data      = tr_data;
			tty->receive_room   = RECEIVE_ROOM;
			FUNC2(tty);
			retval = 0;
		}
	}
	FUNC1(&routelock);
	return retval;
}