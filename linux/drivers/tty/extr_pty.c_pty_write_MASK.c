#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {TYPE_1__* port; scalar_t__ stopped; struct tty_struct* link; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,unsigned char const*,int) ; 

__attribute__((used)) static int FUNC4(struct tty_struct *tty, const unsigned char *buf, int c)
{
	struct tty_struct *to = tty->link;
	unsigned long flags;

	if (tty->stopped)
		return 0;

	if (c > 0) {
		FUNC0(&to->port->lock, flags);
		/* Stuff the data into the input queue of the other end */
		c = FUNC3(to->port, buf, c);
		/* And shovel */
		if (c)
			FUNC2(to->port);
		FUNC1(&to->port->lock, flags);
	}
	return c;
}