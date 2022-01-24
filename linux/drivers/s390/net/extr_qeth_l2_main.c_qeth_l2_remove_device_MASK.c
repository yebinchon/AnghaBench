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
struct qeth_card {int /*<<< orphan*/  dev; int /*<<< orphan*/  close_dev_work; int /*<<< orphan*/  wait_q; } ;
struct TYPE_3__ {int /*<<< orphan*/ * type; } ;
struct ccwgroup_device {scalar_t__ state; TYPE_1__ dev; } ;

/* Variables and functions */
 scalar_t__ CCWGROUP_ONLINE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct qeth_card* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  qeth_generic_devtype ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct ccwgroup_device*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct qeth_card*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (struct qeth_card*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC9(struct ccwgroup_device *cgdev)
{
	struct qeth_card *card = FUNC1(&cgdev->dev);

	if (cgdev->dev.type == &qeth_generic_devtype)
		FUNC2(&cgdev->dev);
	FUNC5(card, 0, 1);
	FUNC8(card->wait_q, FUNC6(card, 0xffffffff) == 0);

	if (cgdev->state == CCWGROUP_ONLINE)
		FUNC3(cgdev);

	FUNC0(&card->close_dev_work);
	if (FUNC4(card->dev))
		FUNC7(card->dev);
}