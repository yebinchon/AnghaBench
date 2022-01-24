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
struct tty_struct {struct tty_struct* link; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tty_struct*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*,struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*,struct tty_struct*) ; 

void FUNC4(struct tty_struct *tty)
{
	struct tty_struct *o_tty = tty->link;

	/*
	 * Shutdown this line discipline. As this is the final close,
	 * it does not race with the set_ldisc code path.
	 */

	FUNC2(tty, o_tty);
	FUNC1(tty);
	if (o_tty)
		FUNC1(o_tty);
	FUNC3(tty, o_tty);

	/* And the memory resources remaining (buffers, termios) will be
	   disposed of when the kref hits zero */

	FUNC0(tty, "released\n");
}