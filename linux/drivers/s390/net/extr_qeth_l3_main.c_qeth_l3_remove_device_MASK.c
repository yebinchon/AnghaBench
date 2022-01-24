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
struct qeth_card {int /*<<< orphan*/  cmd_wq; int /*<<< orphan*/  dev; int /*<<< orphan*/  close_dev_work; int /*<<< orphan*/  wait_q; } ;
struct TYPE_3__ {int /*<<< orphan*/ * type; } ;
struct ccwgroup_device {scalar_t__ state; TYPE_1__ dev; } ;

/* Variables and functions */
 scalar_t__ CCWGROUP_ONLINE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct qeth_card* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qeth_generic_devtype ; 
 int /*<<< orphan*/  FUNC4 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct ccwgroup_device*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct qeth_card*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (struct qeth_card*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC13(struct ccwgroup_device *cgdev)
{
	struct qeth_card *card = FUNC2(&cgdev->dev);

	if (cgdev->dev.type == &qeth_generic_devtype)
		FUNC6(&cgdev->dev);

	FUNC9(card, 0, 1);
	FUNC12(card->wait_q, FUNC10(card, 0xffffffff) == 0);

	if (cgdev->state == CCWGROUP_ONLINE)
		FUNC7(cgdev);

	FUNC0(&card->close_dev_work);
	if (FUNC8(card->dev))
		FUNC11(card->dev);

	FUNC3(card->cmd_wq);
	FUNC1(card->cmd_wq);
	FUNC4(card, 0);
	FUNC5(card);
}