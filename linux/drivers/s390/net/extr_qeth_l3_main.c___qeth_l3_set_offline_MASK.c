#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ cq; } ;
struct TYPE_8__ {int hwtrap; int open_when_online; } ;
struct qeth_card {int /*<<< orphan*/  discipline_mutex; int /*<<< orphan*/  conf_mutex; TYPE_3__* dev; TYPE_2__ options; TYPE_1__ info; } ;
struct TYPE_11__ {int /*<<< orphan*/  kobj; } ;
struct ccwgroup_device {TYPE_5__ dev; } ;
struct TYPE_10__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC2 (struct qeth_card*) ; 
 int IFF_UP ; 
 int /*<<< orphan*/  KOBJ_CHANGE ; 
 int /*<<< orphan*/  NETDEV_REBOOT ; 
 int /*<<< orphan*/  FUNC3 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct qeth_card*,int,char*,int) ; 
 scalar_t__ QETH_CQ_ENABLED ; 
 int /*<<< orphan*/  QETH_DIAGS_TRAP_DISARM ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 struct qeth_card* FUNC8 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 

__attribute__((used)) static int FUNC19(struct ccwgroup_device *cgdev,
			int recovery_mode)
{
	struct qeth_card *card = FUNC8(&cgdev->dev);
	int rc = 0, rc2 = 0, rc3 = 0;

	FUNC10(&card->discipline_mutex);
	FUNC10(&card->conf_mutex);
	FUNC3(card, 3, "setoffl");

	if ((!recovery_mode && card->info.hwtrap) || card->info.hwtrap == 2) {
		FUNC15(card, QETH_DIAGS_TRAP_DISARM);
		card->info.hwtrap = 1;
	}

	FUNC17();
	card->info.open_when_online = card->dev->flags & IFF_UP;
	FUNC7(card->dev);
	FUNC13(card->dev);
	FUNC12(card->dev);
	FUNC18();

	FUNC16(card);
	if (card->options.cq == QETH_CQ_ENABLED) {
		FUNC17();
		FUNC5(NETDEV_REBOOT, card->dev);
		FUNC18();
	}
	rc  = FUNC6(FUNC0(card));
	rc2 = FUNC6(FUNC2(card));
	rc3 = FUNC6(FUNC1(card));
	if (!rc)
		rc = (rc2) ? rc2 : rc3;
	if (rc)
		FUNC4(card, 2, "1err%d", rc);
	FUNC14(FUNC0(card));

	/* let user_space know that device is offline */
	FUNC9(&cgdev->dev.kobj, KOBJ_CHANGE);
	FUNC11(&card->conf_mutex);
	FUNC11(&card->discipline_mutex);
	return 0;
}