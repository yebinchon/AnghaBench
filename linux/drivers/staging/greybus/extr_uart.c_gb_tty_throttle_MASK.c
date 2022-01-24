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
struct TYPE_2__ {int c_cflag; } ;
struct tty_struct {TYPE_1__ termios; struct gb_tty* driver_data; } ;
struct gb_tty {int /*<<< orphan*/  ctrlout; } ;

/* Variables and functions */
 int CRTSCTS ; 
 int /*<<< orphan*/  GB_UART_CTRL_RTS ; 
 scalar_t__ FUNC0 (struct tty_struct*) ; 
 unsigned char FUNC1 (struct tty_struct*) ; 
 int FUNC2 (struct tty_struct*,unsigned char*,int) ; 
 int FUNC3 (struct gb_tty*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct tty_struct *tty)
{
	struct gb_tty *gb_tty = tty->driver_data;
	unsigned char stop_char;
	int retval;

	if (FUNC0(tty)) {
		stop_char = FUNC1(tty);
		retval = FUNC2(tty, &stop_char, 1);
		if (retval <= 0)
			return;
	}

	if (tty->termios.c_cflag & CRTSCTS) {
		gb_tty->ctrlout &= ~GB_UART_CTRL_RTS;
		retval = FUNC3(gb_tty, gb_tty->ctrlout);
	}
}