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
struct TYPE_2__ {int c_line; } ;
struct tty_struct {scalar_t__ receive_room; int /*<<< orphan*/ * disc_data; int /*<<< orphan*/  termios_rwsem; TYPE_1__ termios; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct tty_struct *tty, int disc)
{
	FUNC0(&tty->termios_rwsem);
	tty->termios.c_line = disc;
	FUNC1(&tty->termios_rwsem);

	tty->disc_data = NULL;
	tty->receive_room = 0;
}