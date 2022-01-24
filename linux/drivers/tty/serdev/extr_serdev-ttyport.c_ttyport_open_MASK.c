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
struct ktermios {int c_iflag; int c_lflag; int c_cflag; int /*<<< orphan*/  c_oflag; } ;
struct tty_struct {TYPE_1__* ops; struct ktermios termios; } ;
struct serport {int /*<<< orphan*/  tty_idx; int /*<<< orphan*/  flags; struct tty_struct* tty; int /*<<< orphan*/  tty_drv; } ;
struct serdev_controller {int dummy; } ;
struct TYPE_2__ {int (* open ) (struct tty_struct*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* close ) (struct tty_struct*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int BRKINT ; 
 int CLOCAL ; 
 int CRTSCTS ; 
 int CS8 ; 
 int CSIZE ; 
 int ECHO ; 
 int ECHONL ; 
 int ENODEV ; 
 int ICANON ; 
 int ICRNL ; 
 int IEXTEN ; 
 int IGNBRK ; 
 int IGNCR ; 
 int INLCR ; 
 int ISIG ; 
 int ISTRIP ; 
 scalar_t__ FUNC0 (struct tty_struct*) ; 
 int IXON ; 
 int /*<<< orphan*/  OPOST ; 
 int PARENB ; 
 int PARMRK ; 
 int FUNC1 (struct tty_struct*) ; 
 int /*<<< orphan*/  SERPORT_ACTIVE ; 
 struct serport* FUNC2 (struct serdev_controller*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct tty_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_struct*,int /*<<< orphan*/ *) ; 
 struct tty_struct* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tty_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct tty_struct*,struct ktermios*) ; 
 int /*<<< orphan*/  FUNC9 (struct tty_struct*) ; 

__attribute__((used)) static int FUNC10(struct serdev_controller *ctrl)
{
	struct serport *serport = FUNC2(ctrl);
	struct tty_struct *tty;
	struct ktermios ktermios;
	int ret;

	tty = FUNC6(serport->tty_drv, serport->tty_idx);
	if (FUNC0(tty))
		return FUNC1(tty);
	serport->tty = tty;

	if (!tty->ops->open || !tty->ops->close) {
		ret = -ENODEV;
		goto err_unlock;
	}

	ret = tty->ops->open(serport->tty, NULL);
	if (ret)
		goto err_close;

	FUNC9(serport->tty);

	/* Bring the UART into a known 8 bits no parity hw fc state */
	ktermios = tty->termios;
	ktermios.c_iflag &= ~(IGNBRK | BRKINT | PARMRK | ISTRIP |
			      INLCR | IGNCR | ICRNL | IXON);
	ktermios.c_oflag &= ~OPOST;
	ktermios.c_lflag &= ~(ECHO | ECHONL | ICANON | ISIG | IEXTEN);
	ktermios.c_cflag &= ~(CSIZE | PARENB);
	ktermios.c_cflag |= CS8;
	ktermios.c_cflag |= CRTSCTS;
	/* Hangups are not supported so make sure to ignore carrier detect. */
	ktermios.c_cflag |= CLOCAL;
	FUNC8(tty, &ktermios);

	FUNC3(SERPORT_ACTIVE, &serport->flags);

	return 0;

err_close:
	tty->ops->close(tty, NULL);
err_unlock:
	FUNC9(tty);
	FUNC7(tty, serport->tty_idx);

	return ret;
}