#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int hwtrap; int open_when_online; } ;
struct qeth_card {int /*<<< orphan*/  discipline_mutex; int /*<<< orphan*/  conf_mutex; TYPE_2__* dev; TYPE_1__ info; } ;
struct TYPE_8__ {int /*<<< orphan*/  kobj; } ;
struct ccwgroup_device {TYPE_4__ dev; } ;
struct TYPE_7__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC2 (struct qeth_card*) ; 
 int IFF_UP ; 
 int /*<<< orphan*/  KOBJ_CHANGE ; 
 int /*<<< orphan*/  FUNC3 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct qeth_card*,int,char*,int) ; 
 int /*<<< orphan*/  QETH_DIAGS_TRAP_DISARM ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 struct qeth_card* FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 

__attribute__((used)) static int FUNC18(struct ccwgroup_device *cgdev,
					int recovery_mode)
{
	struct qeth_card *card = FUNC7(&cgdev->dev);
	int rc = 0, rc2 = 0, rc3 = 0;

	FUNC9(&card->discipline_mutex);
	FUNC9(&card->conf_mutex);
	FUNC3(card, 3, "setoffl");

	if ((!recovery_mode && card->info.hwtrap) || card->info.hwtrap == 2) {
		FUNC14(card, QETH_DIAGS_TRAP_DISARM);
		card->info.hwtrap = 1;
	}

	FUNC16();
	card->info.open_when_online = card->dev->flags & IFF_UP;
	FUNC6(card->dev);
	FUNC12(card->dev);
	FUNC11(card->dev);
	FUNC17();

	FUNC15(card);
	rc  = FUNC5(FUNC0(card));
	rc2 = FUNC5(FUNC2(card));
	rc3 = FUNC5(FUNC1(card));
	if (!rc)
		rc = (rc2) ? rc2 : rc3;
	if (rc)
		FUNC4(card, 2, "1err%d", rc);
	FUNC13(FUNC0(card));

	/* let user_space know that device is offline */
	FUNC8(&cgdev->dev.kobj, KOBJ_CHANGE);
	FUNC10(&card->conf_mutex);
	FUNC10(&card->discipline_mutex);
	return 0;
}