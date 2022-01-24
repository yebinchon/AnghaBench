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
struct TYPE_5__ {int /*<<< orphan*/  overrun; int /*<<< orphan*/  frame; int /*<<< orphan*/  parity; int /*<<< orphan*/  rx; } ;
struct TYPE_7__ {unsigned int read_status_mask; int /*<<< orphan*/  lock; TYPE_2__* state; scalar_t__ sysrq; TYPE_1__ icount; } ;
struct sa1100_port {TYPE_3__ port; } ;
struct TYPE_6__ {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 unsigned int TTY_FRAME ; 
 unsigned int TTY_NORMAL ; 
 unsigned int TTY_PARITY ; 
 unsigned int FUNC0 (struct sa1100_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct sa1100_port*) ; 
 int FUNC2 (struct sa1100_port*) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int UTSR1_FRE ; 
 int UTSR1_PRE ; 
 int UTSR1_RNE ; 
 int UTSR1_ROR ; 
 unsigned int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_3__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,unsigned int,unsigned int,unsigned int,unsigned int) ; 

__attribute__((used)) static void
FUNC10(struct sa1100_port *sport)
{
	unsigned int status, ch, flg;

	status = FUNC4(FUNC2(sport)) |
		 FUNC3(FUNC1(sport));
	while (status & FUNC4(UTSR1_RNE)) {
		ch = FUNC0(sport);

		sport->port.icount.rx++;

		flg = TTY_NORMAL;

		/*
		 * note that the error handling code is
		 * out of the main execution path
		 */
		if (status & FUNC4(UTSR1_PRE | UTSR1_FRE | UTSR1_ROR)) {
			if (status & FUNC4(UTSR1_PRE))
				sport->port.icount.parity++;
			else if (status & FUNC4(UTSR1_FRE))
				sport->port.icount.frame++;
			if (status & FUNC4(UTSR1_ROR))
				sport->port.icount.overrun++;

			status &= sport->port.read_status_mask;

			if (status & FUNC4(UTSR1_PRE))
				flg = TTY_PARITY;
			else if (status & FUNC4(UTSR1_FRE))
				flg = TTY_FRAME;

#ifdef SUPPORT_SYSRQ
			sport->port.sysrq = 0;
#endif
		}

		if (FUNC8(&sport->port, ch))
			goto ignore_char;

		FUNC9(&sport->port, status, FUNC4(UTSR1_ROR), ch, flg);

	ignore_char:
		status = FUNC4(FUNC2(sport)) |
			 FUNC3(FUNC1(sport));
	}

	FUNC6(&sport->port.lock);
	FUNC7(&sport->port.state->port);
	FUNC5(&sport->port.lock);
}