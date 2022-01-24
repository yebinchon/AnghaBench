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
struct qeth_card {TYPE_1__* discipline; int /*<<< orphan*/  wait_q; } ;
struct ccwgroup_device {scalar_t__ state; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* set_offline ) (struct ccwgroup_device*) ;} ;

/* Variables and functions */
 scalar_t__ CCWGROUP_OFFLINE ; 
 struct qeth_card* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct qeth_card*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ccwgroup_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct ccwgroup_device *gdev)
{
	struct qeth_card *card = FUNC0(&gdev->dev);

	FUNC1(card, 0, 1);
	FUNC4(card->wait_q, FUNC2(card, 0xffffffff) == 0);
	if (gdev->state == CCWGROUP_OFFLINE)
		return 0;

	card->discipline->set_offline(gdev);
	return 0;
}