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
struct TYPE_2__ {scalar_t__ hwtrap; } ;
struct qeth_card {TYPE_1__ info; } ;
struct ccwgroup_device {scalar_t__ state; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qeth_card*) ; 
 scalar_t__ CCWGROUP_ONLINE ; 
 int /*<<< orphan*/  QETH_DIAGS_TRAP_DISARM ; 
 struct qeth_card* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC4 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct qeth_card*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct ccwgroup_device *gdev)
{
	struct qeth_card *card = FUNC1(&gdev->dev);
	FUNC6(card, 0, 1);
	if ((gdev->state == CCWGROUP_ONLINE) && card->info.hwtrap)
		FUNC4(card, QETH_DIAGS_TRAP_DISARM);
	FUNC5(card, 0);
	FUNC3(card);
	FUNC2(FUNC0(card));
}