#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct hvsi_priv {TYPE_2__* tty; scalar_t__ opened; int /*<<< orphan*/  termno; int /*<<< orphan*/  is_console; } ;
struct hvc_struct {int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {int c_cflag; } ;
struct TYPE_4__ {TYPE_1__ termios; } ;

/* Variables and functions */
 int HUPCL ; 
 int /*<<< orphan*/  FUNC0 (struct hvsi_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct hvsi_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

void FUNC6(struct hvsi_priv *pv, struct hvc_struct *hp)
{
	unsigned long flags;

	FUNC2("HVSI@%x: close !\n", pv->termno);

	if (!pv->is_console) {
		FUNC2("HVSI@%x: Not a console, tearing down\n",
			 pv->termno);

		/* Clear opened, synchronize with khvcd */
		FUNC3(&hp->lock, flags);
		pv->opened = 0;
		FUNC4(&hp->lock, flags);

		/* Clear our own DTR */
		if (!pv->tty || (pv->tty->termios.c_cflag & HUPCL))
			FUNC1(pv, 0);

		/* Tear down the connection */
		FUNC0(pv);
	}

	FUNC5(pv->tty);
	pv->tty = NULL;
}