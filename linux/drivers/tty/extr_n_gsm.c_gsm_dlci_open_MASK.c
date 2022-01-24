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
struct gsm_dlci {TYPE_1__* gsm; int /*<<< orphan*/  addr; int /*<<< orphan*/  state; int /*<<< orphan*/  t1; } ;
struct TYPE_2__ {int /*<<< orphan*/  event; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLCI_OPEN ; 
 int debug ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct gsm_dlci *dlci)
{
	/* Note that SABM UA .. SABM UA first UA lost can mean that we go
	   open -> open */
	FUNC0(&dlci->t1);
	/* This will let a tty open continue */
	dlci->state = DLCI_OPEN;
	if (debug & 8)
		FUNC1("DLCI %d goes open.\n", dlci->addr);
	FUNC2(&dlci->gsm->event);
}