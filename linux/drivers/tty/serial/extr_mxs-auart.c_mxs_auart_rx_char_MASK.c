#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  void* u8 ;
typedef  int u32 ;
struct TYPE_5__ {int /*<<< orphan*/  overrun; int /*<<< orphan*/  frame; int /*<<< orphan*/  parity; int /*<<< orphan*/  brk; int /*<<< orphan*/  rx; } ;
struct TYPE_6__ {int read_status_mask; TYPE_1__ icount; } ;
struct mxs_auart_port {TYPE_2__ port; } ;

/* Variables and functions */
 int AUART_STAT_BERR ; 
 int AUART_STAT_FERR ; 
 int AUART_STAT_OERR ; 
 int AUART_STAT_PERR ; 
 int /*<<< orphan*/  REG_DATA ; 
 int /*<<< orphan*/  REG_STAT ; 
 int TTY_BREAK ; 
 int TTY_FRAME ; 
 int TTY_NORMAL ; 
 int TTY_PARITY ; 
 void* FUNC0 (struct mxs_auart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,struct mxs_auart_port*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*,void*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int,int,void*,int) ; 

__attribute__((used)) static void FUNC5(struct mxs_auart_port *s)
{
	int flag;
	u32 stat;
	u8 c;

	c = FUNC0(s, REG_DATA);
	stat = FUNC0(s, REG_STAT);

	flag = TTY_NORMAL;
	s->port.icount.rx++;

	if (stat & AUART_STAT_BERR) {
		s->port.icount.brk++;
		if (FUNC2(&s->port))
			goto out;
	} else if (stat & AUART_STAT_PERR) {
		s->port.icount.parity++;
	} else if (stat & AUART_STAT_FERR) {
		s->port.icount.frame++;
	}

	/*
	 * Mask off conditions which should be ingored.
	 */
	stat &= s->port.read_status_mask;

	if (stat & AUART_STAT_BERR) {
		flag = TTY_BREAK;
	} else if (stat & AUART_STAT_PERR)
		flag = TTY_PARITY;
	else if (stat & AUART_STAT_FERR)
		flag = TTY_FRAME;

	if (stat & AUART_STAT_OERR)
		s->port.icount.overrun++;

	if (FUNC3(&s->port, c))
		goto out;

	FUNC4(&s->port, stat, AUART_STAT_OERR, c, flag);
out:
	FUNC1(stat, s, REG_STAT);
}