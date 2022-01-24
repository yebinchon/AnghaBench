#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct tty_port {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  buf_overrun; int /*<<< orphan*/  overrun; int /*<<< orphan*/  frame; int /*<<< orphan*/  parity; int /*<<< orphan*/  brk; int /*<<< orphan*/  rx; } ;
struct TYPE_7__ {unsigned int ignore_status_mask; int read_status_mask; int /*<<< orphan*/  lock; TYPE_2__ icount; scalar_t__ sysrq; TYPE_1__* state; } ;
struct imx_port {TYPE_3__ port; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_5__ {struct tty_port port; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 unsigned int TTY_BREAK ; 
 unsigned int TTY_FRAME ; 
 unsigned int TTY_NORMAL ; 
 unsigned int TTY_OVERRUN ; 
 unsigned int TTY_PARITY ; 
 int /*<<< orphan*/  URXD0 ; 
 unsigned int URXD_BRK ; 
 int URXD_DUMMY_READ ; 
 unsigned int URXD_ERR ; 
 unsigned int URXD_FRMERR ; 
 unsigned int URXD_OVRRUN ; 
 unsigned int URXD_PRERR ; 
 int /*<<< orphan*/  USR2 ; 
 int USR2_BRCD ; 
 int USR2_RDR ; 
 int FUNC0 (struct imx_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct imx_port*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_port*) ; 
 scalar_t__ FUNC5 (struct tty_port*,unsigned int,unsigned int) ; 
 scalar_t__ FUNC6 (TYPE_3__*) ; 
 scalar_t__ FUNC7 (TYPE_3__*,unsigned char) ; 
 scalar_t__ FUNC8 (unsigned int) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *dev_id)
{
	struct imx_port *sport = dev_id;
	unsigned int rx, flg, ignored = 0;
	struct tty_port *port = &sport->port.state->port;

	FUNC2(&sport->port.lock);

	while (FUNC0(sport, USR2) & USR2_RDR) {
		u32 usr2;

		flg = TTY_NORMAL;
		sport->port.icount.rx++;

		rx = FUNC0(sport, URXD0);

		usr2 = FUNC0(sport, USR2);
		if (usr2 & USR2_BRCD) {
			FUNC1(sport, USR2_BRCD, USR2);
			if (FUNC6(&sport->port))
				continue;
		}

		if (FUNC7(&sport->port, (unsigned char)rx))
			continue;

		if (FUNC8(rx & URXD_ERR)) {
			if (rx & URXD_BRK)
				sport->port.icount.brk++;
			else if (rx & URXD_PRERR)
				sport->port.icount.parity++;
			else if (rx & URXD_FRMERR)
				sport->port.icount.frame++;
			if (rx & URXD_OVRRUN)
				sport->port.icount.overrun++;

			if (rx & sport->port.ignore_status_mask) {
				if (++ignored > 100)
					goto out;
				continue;
			}

			rx &= (sport->port.read_status_mask | 0xFF);

			if (rx & URXD_BRK)
				flg = TTY_BREAK;
			else if (rx & URXD_PRERR)
				flg = TTY_PARITY;
			else if (rx & URXD_FRMERR)
				flg = TTY_FRAME;
			if (rx & URXD_OVRRUN)
				flg = TTY_OVERRUN;

#ifdef SUPPORT_SYSRQ
			sport->port.sysrq = 0;
#endif
		}

		if (sport->port.ignore_status_mask & URXD_DUMMY_READ)
			goto out;

		if (FUNC5(port, rx, flg) == 0)
			sport->port.icount.buf_overrun++;
	}

out:
	FUNC3(&sport->port.lock);
	FUNC4(port);
	return IRQ_HANDLED;
}