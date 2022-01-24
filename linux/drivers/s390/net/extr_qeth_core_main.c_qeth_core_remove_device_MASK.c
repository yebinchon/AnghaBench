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
struct qeth_card {int /*<<< orphan*/  dev; TYPE_1__* discipline; } ;
struct ccwgroup_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* remove ) (struct ccwgroup_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qeth_card*,int,char*) ; 
 struct qeth_card* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC5 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC6 (struct ccwgroup_device*) ; 

__attribute__((used)) static void FUNC7(struct ccwgroup_device *gdev)
{
	struct qeth_card *card = FUNC1(&gdev->dev);

	FUNC0(card, 2, "removedv");

	if (card->discipline) {
		card->discipline->remove(gdev);
		FUNC5(card);
	}

	FUNC2(card->dev);
	FUNC4(card);
	FUNC3(&gdev->dev);
}