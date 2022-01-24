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
typedef  int /*<<< orphan*/  u8 ;
struct gsm_mux {int cretries; int n2; int t2; int /*<<< orphan*/  control_lock; int /*<<< orphan*/  t2_timer; TYPE_1__** dlci; struct gsm_control* pending_cmd; int /*<<< orphan*/  event; } ;
struct gsm_control {unsigned int cmd; int len; int /*<<< orphan*/ * data; } ;
struct TYPE_2__ {scalar_t__ mode; } ;

/* Variables and functions */
 scalar_t__ DLCI_MODE_ADM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct gsm_mux*,struct gsm_control*) ; 
 scalar_t__ jiffies ; 
 struct gsm_control* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct gsm_control *FUNC6(struct gsm_mux *gsm,
		unsigned int command, u8 *data, int clen)
{
	struct gsm_control *ctrl = FUNC1(sizeof(struct gsm_control),
						GFP_KERNEL);
	unsigned long flags;
	if (ctrl == NULL)
		return NULL;
retry:
	FUNC5(gsm->event, gsm->pending_cmd == NULL);
	FUNC3(&gsm->control_lock, flags);
	if (gsm->pending_cmd != NULL) {
		FUNC4(&gsm->control_lock, flags);
		goto retry;
	}
	ctrl->cmd = command;
	ctrl->data = data;
	ctrl->len = clen;
	gsm->pending_cmd = ctrl;

	/* If DLCI0 is in ADM mode skip retries, it won't respond */
	if (gsm->dlci[0]->mode == DLCI_MODE_ADM)
		gsm->cretries = 1;
	else
		gsm->cretries = gsm->n2;

	FUNC2(&gsm->t2_timer, jiffies + gsm->t2 * HZ / 100);
	FUNC0(gsm, ctrl);
	FUNC4(&gsm->control_lock, flags);
	return ctrl;
}