#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ state; scalar_t__ err_log_state; int /*<<< orphan*/  irq_queue; int /*<<< orphan*/  hysdn_lock; } ;
typedef  TYPE_1__ hysdn_card ;

/* Variables and functions */
 scalar_t__ CARD_STATE_RUN ; 
 scalar_t__ ERRLOG_STATE_OFF ; 
 scalar_t__ ERRLOG_STATE_ON ; 
 scalar_t__ ERRLOG_STATE_START ; 
 scalar_t__ ERRLOG_STATE_STOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC3(hysdn_card *card, int on)
{
	unsigned long flags;

	if (card->state != CARD_STATE_RUN) {
		card->err_log_state = ERRLOG_STATE_OFF;		/* must be off */
		return;
	}
	FUNC1(&card->hysdn_lock, flags);

	if (((card->err_log_state == ERRLOG_STATE_OFF) && !on) ||
	    ((card->err_log_state == ERRLOG_STATE_ON) && on)) {
		FUNC2(&card->hysdn_lock, flags);
		return;		/* nothing to do */
	}
	if (on)
		card->err_log_state = ERRLOG_STATE_START;	/* request start */
	else
		card->err_log_state = ERRLOG_STATE_STOP;	/* request stop */

	FUNC2(&card->hysdn_lock, flags);
	FUNC0(&card->irq_queue);
}