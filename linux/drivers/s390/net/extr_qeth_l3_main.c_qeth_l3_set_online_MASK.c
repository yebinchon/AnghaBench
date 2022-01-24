#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ open_when_online; scalar_t__ hwtrap; } ;
struct TYPE_4__ {int /*<<< orphan*/  sniffer; } ;
struct qeth_card {int /*<<< orphan*/  discipline_mutex; int /*<<< orphan*/  conf_mutex; TYPE_2__ info; int /*<<< orphan*/  state; TYPE_1__ options; struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  kobj; } ;
struct ccwgroup_device {TYPE_3__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*) ; 
 int /*<<< orphan*/  CARD_STATE_HARDSETUP ; 
 int /*<<< orphan*/  CARD_STATE_SOFTSETUP ; 
 int /*<<< orphan*/  FUNC2 (struct qeth_card*) ; 
 int ENODEV ; 
 int /*<<< orphan*/  KOBJ_CHANGE ; 
 int /*<<< orphan*/  FUNC3 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct qeth_card*,int,char*,int) ; 
 int /*<<< orphan*/  QETH_DIAGS_CMD_TRAP ; 
 int /*<<< orphan*/  QETH_DIAGS_TRAP_ARM ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct qeth_card* FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (struct qeth_card*,int*) ; 
 int /*<<< orphan*/  FUNC16 (struct net_device*) ; 
 scalar_t__ FUNC17 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct qeth_card*) ; 
 scalar_t__ FUNC19 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct qeth_card*) ; 
 int FUNC21 (struct qeth_card*) ; 
 int FUNC22 (struct qeth_card*) ; 
 int FUNC23 (struct qeth_card*) ; 
 int FUNC24 (struct qeth_card*,int) ; 
 int FUNC25 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC26 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC27 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC28 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC29 (struct qeth_card*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC31 () ; 
 int /*<<< orphan*/  FUNC32 () ; 

__attribute__((used)) static int FUNC33(struct ccwgroup_device *gdev)
{
	struct qeth_card *card = FUNC6(&gdev->dev);
	struct net_device *dev = card->dev;
	int rc = 0;
	bool carrier_ok;

	FUNC9(&card->discipline_mutex);
	FUNC9(&card->conf_mutex);
	FUNC3(card, 2, "setonlin");

	rc = FUNC15(card, &carrier_ok);
	if (rc) {
		FUNC4(card, 2, "2err%04x", rc);
		rc = -ENODEV;
		goto out_remove;
	}

	if (FUNC19(card, QETH_DIAGS_CMD_TRAP)) {
		if (card->info.hwtrap &&
		    FUNC17(card, QETH_DIAGS_TRAP_ARM))
			card->info.hwtrap = 0;
	} else
		card->info.hwtrap = 0;

	card->state = CARD_STATE_HARDSETUP;
	FUNC28(card);

	/* softsetup */
	FUNC3(card, 2, "softsetp");

	rc = FUNC21(card);
	if (rc)
		FUNC4(card, 2, "2err%04x", rc);
	if (!card->options.sniffer) {
		rc = FUNC25(card);
		if (rc) {
			FUNC4(card, 2, "3err%d", rc);
			goto out_remove;
		}
		rc = FUNC22(card);
		if (rc)
			FUNC4(card, 2, "4err%04x", rc);
		rc = FUNC23(card);
		if (rc)
			FUNC4(card, 2, "5err%04x", rc);
	}

	rc = FUNC18(card);
	if (rc) {
		FUNC4(card, 2, "6err%d", rc);
		rc = -ENODEV;
		goto out_remove;
	}
	card->state = CARD_STATE_SOFTSETUP;

	FUNC29(card, 0xffffffff, 0);
	FUNC20(card);

	if (!FUNC27(dev)) {
		rc = FUNC24(card, carrier_ok);
		if (rc)
			goto out_remove;
	} else {
		FUNC31();
		if (carrier_ok)
			FUNC12(dev);
		else
			FUNC11(dev);

		FUNC13(dev);
		FUNC16(dev);

		if (card->info.open_when_online) {
			card->info.open_when_online = 0;
			FUNC7(dev, NULL);
		}
		FUNC32();
	}
	FUNC30(card);
	/* let user_space know that device is online */
	FUNC8(&gdev->dev.kobj, KOBJ_CHANGE);
	FUNC10(&card->conf_mutex);
	FUNC10(&card->discipline_mutex);
	return 0;
out_remove:
	FUNC26(card);
	FUNC5(FUNC0(card));
	FUNC5(FUNC2(card));
	FUNC5(FUNC1(card));
	FUNC14(FUNC0(card));

	FUNC10(&card->conf_mutex);
	FUNC10(&card->discipline_mutex);
	return rc;
}