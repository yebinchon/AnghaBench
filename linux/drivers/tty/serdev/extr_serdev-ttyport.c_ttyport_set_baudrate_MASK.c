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
struct ktermios {unsigned int c_ospeed; int /*<<< orphan*/  c_cflag; } ;
struct tty_struct {struct ktermios termios; } ;
struct serport {struct tty_struct* tty; } ;
struct serdev_controller {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CBAUD ; 
 struct serport* FUNC0 (struct serdev_controller*) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*,struct ktermios*) ; 
 int /*<<< orphan*/  FUNC2 (struct ktermios*,unsigned int,unsigned int) ; 

__attribute__((used)) static unsigned int FUNC3(struct serdev_controller *ctrl, unsigned int speed)
{
	struct serport *serport = FUNC0(ctrl);
	struct tty_struct *tty = serport->tty;
	struct ktermios ktermios = tty->termios;

	ktermios.c_cflag &= ~CBAUD;
	FUNC2(&ktermios, speed, speed);

	/* tty_set_termios() return not checked as it is always 0 */
	FUNC1(tty, &ktermios);
	return ktermios.c_ospeed;
}