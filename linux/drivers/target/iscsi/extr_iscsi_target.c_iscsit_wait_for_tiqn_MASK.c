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
struct iscsi_tiqn {scalar_t__ tiqn_access_count; int /*<<< orphan*/  tiqn_state_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct iscsi_tiqn *tiqn)
{
	/*
	 * Wait for accesses to said struct iscsi_tiqn to end.
	 */
	FUNC1(&tiqn->tiqn_state_lock);
	while (tiqn->tiqn_access_count != 0) {
		FUNC2(&tiqn->tiqn_state_lock);
		FUNC0(10);
		FUNC1(&tiqn->tiqn_state_lock);
	}
	FUNC2(&tiqn->tiqn_state_lock);
}