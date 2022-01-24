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
struct serial_state {int /*<<< orphan*/  MCR; } ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 int /*<<< orphan*/  SER_DTR ; 
 int /*<<< orphan*/  SER_RTS ; 
 unsigned int TIOCM_DTR ; 
 unsigned int TIOCM_RTS ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct serial_state*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (struct tty_struct*) ; 

__attribute__((used)) static int FUNC5(struct tty_struct *tty, unsigned int set,
						unsigned int clear)
{
	struct serial_state *info = tty->driver_data;
	unsigned long flags;

	if (FUNC3(info, tty->name, "rs_ioctl"))
		return -ENODEV;
	if (FUNC4(tty))
		return -EIO;

	FUNC1(flags);
	if (set & TIOCM_RTS)
		info->MCR |= SER_RTS;
	if (set & TIOCM_DTR)
		info->MCR |= SER_DTR;
	if (clear & TIOCM_RTS)
		info->MCR &= ~SER_RTS;
	if (clear & TIOCM_DTR)
		info->MCR &= ~SER_DTR;
	FUNC2(info->MCR);
	FUNC0(flags);
	return 0;
}