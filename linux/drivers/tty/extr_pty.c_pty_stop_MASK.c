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
struct tty_struct {TYPE_1__* link; int /*<<< orphan*/  ctrl_lock; int /*<<< orphan*/  ctrl_status; } ;
struct TYPE_2__ {int /*<<< orphan*/  read_wait; scalar_t__ packet; } ;

/* Variables and functions */
 int /*<<< orphan*/  EPOLLIN ; 
 int /*<<< orphan*/  TIOCPKT_START ; 
 int /*<<< orphan*/  TIOCPKT_STOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct tty_struct *tty)
{
	unsigned long flags;

	if (tty->link && tty->link->packet) {
		FUNC0(&tty->ctrl_lock, flags);
		tty->ctrl_status &= ~TIOCPKT_START;
		tty->ctrl_status |= TIOCPKT_STOP;
		FUNC1(&tty->ctrl_lock, flags);
		FUNC2(&tty->link->read_wait, EPOLLIN);
	}
}