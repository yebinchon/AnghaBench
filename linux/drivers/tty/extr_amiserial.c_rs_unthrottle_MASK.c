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
struct tty_struct {int /*<<< orphan*/  name; struct serial_state* driver_data; } ;
struct serial_state {int /*<<< orphan*/  MCR; scalar_t__ x_char; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tty_struct*) ; 
 scalar_t__ FUNC1 (struct tty_struct*) ; 
 int /*<<< orphan*/  SER_RTS ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tty_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct serial_state*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct tty_struct*) ; 

__attribute__((used)) static void FUNC10(struct tty_struct * tty)
{
	struct serial_state *info = tty->driver_data;
	unsigned long flags;
#ifdef SERIAL_DEBUG_THROTTLE
	printk("unthrottle %s ....\n", tty_name(tty));
#endif

	if (FUNC8(info, tty->name, "rs_unthrottle"))
		return;

	if (FUNC1(tty)) {
		if (info->x_char)
			info->x_char = 0;
		else
			FUNC6(tty, FUNC2(tty));
	}
	if (FUNC0(tty))
		info->MCR |= SER_RTS;
	FUNC4(flags);
	FUNC7(info->MCR);
	FUNC3(flags);
}