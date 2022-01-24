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
struct tb {int /*<<< orphan*/  wq; int /*<<< orphan*/  root_switch; TYPE_1__* nhi; } ;
struct icm {int /*<<< orphan*/  rescan_work; } ;
struct TYPE_2__ {scalar_t__ going_away; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tb*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tb*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct icm* FUNC5 (struct tb*) ; 

__attribute__((used)) static void FUNC6(struct tb *tb)
{
	struct icm *icm = FUNC5(tb);

	if (tb->nhi->going_away)
		return;

	/*
	 * If RTD3 was vetoed before we entered system suspend allow it
	 * again now before driver ready is sent. Firmware sends a new RTD3
	 * veto if it is still the case after we have sent it driver ready
	 * command.
	 */
	FUNC2(tb);
	FUNC1(tb->root_switch);

	/*
	 * Now all existing children should be resumed, start events
	 * from ICM to get updated status.
	 */
	FUNC0(tb, NULL, NULL, NULL);

	/*
	 * We do not get notifications of devices that have been
	 * unplugged during suspend so schedule rescan to clean them up
	 * if any.
	 */
	FUNC4(tb->wq, &icm->rescan_work, FUNC3(500));
}