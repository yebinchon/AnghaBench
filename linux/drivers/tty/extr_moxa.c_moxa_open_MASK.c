#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {int index; int /*<<< orphan*/  termios; struct moxa_port* driver_data; } ;
struct TYPE_5__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  count; } ;
struct moxa_port {scalar_t__ type; TYPE_1__ port; scalar_t__ statusflags; } ;
struct moxa_board_conf {int numPorts; struct moxa_port* ports; int /*<<< orphan*/  ready; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int ENODEV ; 
 int EPERM ; 
 int ERESTARTSYS ; 
 int MAX_PORTS ; 
 int MAX_PORTS_PER_BOARD ; 
 int /*<<< orphan*/  FUNC0 (struct moxa_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct moxa_port*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct moxa_port*,int) ; 
 scalar_t__ PORT_16550A ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct moxa_board_conf* moxa_boards ; 
 int /*<<< orphan*/  moxa_openlock ; 
 int /*<<< orphan*/  FUNC4 (struct tty_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_1__*,struct tty_struct*,struct file*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,struct tty_struct*) ; 

__attribute__((used)) static int FUNC12(struct tty_struct *tty, struct file *filp)
{
	struct moxa_board_conf *brd;
	struct moxa_port *ch;
	int port;

	port = tty->index;
	if (port == MAX_PORTS) {
		return FUNC3(CAP_SYS_ADMIN) ? 0 : -EPERM;
	}
	if (FUNC6(&moxa_openlock))
		return -ERESTARTSYS;
	brd = &moxa_boards[port / MAX_PORTS_PER_BOARD];
	if (!brd->ready) {
		FUNC7(&moxa_openlock);
		return -ENODEV;
	}

	if (port % MAX_PORTS_PER_BOARD >= brd->numPorts) {
		FUNC7(&moxa_openlock);
		return -ENODEV;
	}

	ch = &brd->ports[port % MAX_PORTS_PER_BOARD];
	ch->port.count++;
	tty->driver_data = ch;
	FUNC11(&ch->port, tty);
	FUNC5(&ch->port.mutex);
	if (!FUNC9(&ch->port)) {
		ch->statusflags = 0;
		FUNC4(tty, &tty->termios);
		FUNC1(ch, 1, 1);
		FUNC0(ch);
		FUNC2(ch, ch->type == PORT_16550A);
		FUNC10(&ch->port, 1);
	}
	FUNC7(&ch->port.mutex);
	FUNC7(&moxa_openlock);

	return FUNC8(&ch->port, tty, filp);
}