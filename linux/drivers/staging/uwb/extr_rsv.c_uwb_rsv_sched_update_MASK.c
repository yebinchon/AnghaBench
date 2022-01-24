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
struct uwb_rc {scalar_t__ set_drp_ie_pending; int /*<<< orphan*/  rsvs_lock; int /*<<< orphan*/  rsv_update_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct uwb_rc*) ; 

void FUNC4(struct uwb_rc *rc)
{
	FUNC1(&rc->rsvs_lock);
	if (!FUNC0(&rc->rsv_update_work)) {
		if (rc->set_drp_ie_pending > 0) {
			rc->set_drp_ie_pending++;
			goto unlock;
		}
		FUNC3(rc);
	}
unlock:
	FUNC2(&rc->rsvs_lock);
}