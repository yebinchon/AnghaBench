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
struct gsm_dlci {scalar_t__ addr; TYPE_1__* gsm; int /*<<< orphan*/  fifo; int /*<<< orphan*/  port; int /*<<< orphan*/  state; int /*<<< orphan*/  t1; } ;
struct TYPE_2__ {int dead; int /*<<< orphan*/  event; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLCI_CLOSED ; 
 int debug ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct gsm_dlci *dlci)
{
	FUNC0(&dlci->t1);
	if (debug & 8)
		FUNC2("DLCI %d goes closed.\n", dlci->addr);
	dlci->state = DLCI_CLOSED;
	if (dlci->addr != 0) {
		FUNC3(&dlci->port, false);
		FUNC1(dlci->fifo);
	} else
		dlci->gsm->dead = 1;
	FUNC4(&dlci->gsm->event);
	/* A DLCI 0 close is a MUX termination so we need to kick that
	   back to userspace somehow */
}