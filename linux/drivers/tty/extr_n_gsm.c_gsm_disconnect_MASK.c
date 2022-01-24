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
struct gsm_mux {int /*<<< orphan*/  event; int /*<<< orphan*/  t2_timer; struct gsm_dlci** dlci; } ;
struct gsm_dlci {scalar_t__ state; } ;
struct gsm_control {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_CLD ; 
 scalar_t__ DLCI_CLOSED ; 
 int EINTR ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct gsm_control* FUNC1 (struct gsm_mux*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gsm_mux*,struct gsm_control*) ; 
 int /*<<< orphan*/  FUNC3 (struct gsm_dlci*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct gsm_mux *gsm)
{
	struct gsm_dlci *dlci = gsm->dlci[0];
	struct gsm_control *gc;

	if (!dlci)
		return 0;

	/* In theory disconnecting DLCI 0 is sufficient but for some
	   modems this is apparently not the case. */
	gc = FUNC1(gsm, CMD_CLD, NULL, 0);
	if (gc)
		FUNC2(gsm, gc);

	FUNC0(&gsm->t2_timer);
	/* Now we are sure T2 has stopped */

	FUNC3(dlci);
	FUNC5(gsm->event,
				dlci->state == DLCI_CLOSED);

	if (FUNC4(current))
		return -EINTR;

	return 0;
}