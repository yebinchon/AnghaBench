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
struct tty_struct {struct moxa_port* driver_data; } ;
struct moxa_port {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct moxa_port*,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct moxa_port*,int,int) ; 
 unsigned int TIOCM_DTR ; 
 unsigned int TIOCM_RTS ; 
 int /*<<< orphan*/  moxa_openlock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct tty_struct *tty,
			 unsigned int set, unsigned int clear)
{
	struct moxa_port *ch;
	int dtr, rts;

	FUNC2(&moxa_openlock);
	ch = tty->driver_data;
	if (!ch) {
		FUNC3(&moxa_openlock);
		return -EINVAL;
	}

	FUNC0(ch, &dtr, &rts);
	if (set & TIOCM_RTS)
		rts = 1;
	if (set & TIOCM_DTR)
		dtr = 1;
	if (clear & TIOCM_RTS)
		rts = 0;
	if (clear & TIOCM_DTR)
		dtr = 0;
	FUNC1(ch, dtr, rts);
	FUNC3(&moxa_openlock);
	return 0;
}