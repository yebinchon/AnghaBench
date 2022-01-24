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
struct iscsi_tiqn {scalar_t__ tiqn_state; int /*<<< orphan*/  tiqn_state_lock; } ;

/* Variables and functions */
 scalar_t__ TIQN_STATE_ACTIVE ; 
 scalar_t__ TIQN_STATE_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct iscsi_tiqn *tiqn)
{
	FUNC0(&tiqn->tiqn_state_lock);
	if (tiqn->tiqn_state == TIQN_STATE_ACTIVE) {
		tiqn->tiqn_state = TIQN_STATE_SHUTDOWN;
		FUNC1(&tiqn->tiqn_state_lock);
		return 0;
	}
	FUNC1(&tiqn->tiqn_state_lock);

	return -1;
}