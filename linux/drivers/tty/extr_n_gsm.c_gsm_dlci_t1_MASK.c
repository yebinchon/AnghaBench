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
struct timer_list {int dummy; } ;
struct gsm_mux {int t1; int control; } ;
struct gsm_dlci {int state; int /*<<< orphan*/  t1; int /*<<< orphan*/  addr; struct gsm_mux* gsm; int /*<<< orphan*/  retries; int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int DISC ; 
#define  DLCI_CLOSING 129 
 int /*<<< orphan*/  DLCI_MODE_ADM ; 
#define  DLCI_OPENING 128 
 int DM ; 
 int HZ ; 
 int PF ; 
 int SABM ; 
 int debug ; 
 struct gsm_dlci* dlci ; 
 struct gsm_dlci* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gsm_mux*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gsm_dlci*) ; 
 int /*<<< orphan*/  FUNC3 (struct gsm_dlci*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  t1 ; 

__attribute__((used)) static void FUNC6(struct timer_list *t)
{
	struct gsm_dlci *dlci = FUNC0(dlci, t, t1);
	struct gsm_mux *gsm = dlci->gsm;

	switch (dlci->state) {
	case DLCI_OPENING:
		dlci->retries--;
		if (dlci->retries) {
			FUNC1(dlci->gsm, dlci->addr, SABM|PF);
			FUNC4(&dlci->t1, jiffies + gsm->t1 * HZ / 100);
		} else if (!dlci->addr && gsm->control == (DM | PF)) {
			if (debug & 8)
				FUNC5("DLCI %d opening in ADM mode.\n",
					dlci->addr);
			dlci->mode = DLCI_MODE_ADM;
			FUNC3(dlci);
		} else {
			FUNC2(dlci);
		}

		break;
	case DLCI_CLOSING:
		dlci->retries--;
		if (dlci->retries) {
			FUNC1(dlci->gsm, dlci->addr, DISC|PF);
			FUNC4(&dlci->t1, jiffies + gsm->t1 * HZ / 100);
		} else
			FUNC2(dlci);
		break;
	}
}