#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ open_when_online; scalar_t__ hwtrap; } ;
struct TYPE_6__ {scalar_t__ supported_funcs; } ;
struct TYPE_7__ {TYPE_1__ sbp; } ;
struct qeth_card {int /*<<< orphan*/  discipline_mutex; int /*<<< orphan*/  conf_mutex; TYPE_4__ info; int /*<<< orphan*/  state; TYPE_3__* gdev; TYPE_2__ options; struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  kobj; } ;
struct ccwgroup_device {TYPE_5__ dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*) ; 
 int /*<<< orphan*/  CARD_STATE_HARDSETUP ; 
 int /*<<< orphan*/  CARD_STATE_SOFTSETUP ; 
 int /*<<< orphan*/  FUNC2 (struct qeth_card*) ; 
 int ENODEV ; 
 scalar_t__ FUNC3 (struct qeth_card*) ; 
 scalar_t__ FUNC4 (struct qeth_card*) ; 
 int /*<<< orphan*/  KOBJ_CHANGE ; 
 int /*<<< orphan*/  FUNC5 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct qeth_card*,int,char*,int) ; 
 int /*<<< orphan*/  QETH_DIAGS_CMD_TRAP ; 
 int /*<<< orphan*/  QETH_DIAGS_TRAP_ARM ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct qeth_card* FUNC8 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct qeth_card*) ; 
 int FUNC19 (struct qeth_card*,int*) ; 
 int /*<<< orphan*/  FUNC20 (struct net_device*) ; 
 scalar_t__ FUNC21 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int FUNC22 (struct qeth_card*) ; 
 scalar_t__ FUNC23 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC25 (struct qeth_card*) ; 
 int FUNC26 (struct qeth_card*,int) ; 
 int FUNC27 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC28 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC29 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC30 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC31 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC32 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC33 (struct qeth_card*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC35 () ; 
 int /*<<< orphan*/  FUNC36 () ; 

__attribute__((used)) static int FUNC37(struct ccwgroup_device *gdev)
{
	struct qeth_card *card = FUNC8(&gdev->dev);
	struct net_device *dev = card->dev;
	int rc = 0;
	bool carrier_ok;

	FUNC12(&card->discipline_mutex);
	FUNC12(&card->conf_mutex);
	FUNC5(card, 2, "setonlin");

	rc = FUNC19(card, &carrier_ok);
	if (rc) {
		FUNC6(card, 2, "2err%04x", rc);
		rc = -ENODEV;
		goto out_remove;
	}

	if (FUNC23(card, QETH_DIAGS_CMD_TRAP)) {
		if (card->info.hwtrap &&
		    FUNC21(card, QETH_DIAGS_TRAP_ARM))
			card->info.hwtrap = 0;
	} else
		card->info.hwtrap = 0;

	FUNC18(card);
	if (card->options.sbp.supported_funcs)
		FUNC9(&card->gdev->dev,
		"The device represents a Bridge Capable Port\n");

	FUNC24(card);

	/* for the rx_bcast characteristic, init VNICC after setmac */
	FUNC30(card);

	FUNC34(card);
	FUNC29(card);

	FUNC25(card);

	card->state = CARD_STATE_HARDSETUP;
	FUNC32(card);

	/* softsetup */
	FUNC5(card, 2, "softsetp");

	if (FUNC3(card) || FUNC4(card)) {
		rc = FUNC27(card);
		if (rc)
			goto out_remove;
	}

	rc = FUNC22(card);
	if (rc) {
		FUNC6(card, 2, "6err%d", rc);
		rc = -ENODEV;
		goto out_remove;
	}
	card->state = CARD_STATE_SOFTSETUP;

	FUNC33(card, 0xffffffff, 0);

	if (!FUNC31(dev)) {
		rc = FUNC26(card, carrier_ok);
		if (rc)
			goto out_remove;
	} else {
		FUNC35();
		if (carrier_ok)
			FUNC15(dev);
		else
			FUNC14(dev);

		FUNC16(dev);
		FUNC20(dev);

		if (card->info.open_when_online) {
			card->info.open_when_online = 0;
			FUNC10(dev, NULL);
		}
		FUNC36();
	}
	/* let user_space know that device is online */
	FUNC11(&gdev->dev.kobj, KOBJ_CHANGE);
	FUNC13(&card->conf_mutex);
	FUNC13(&card->discipline_mutex);
	return 0;

out_remove:
	FUNC28(card);
	FUNC7(FUNC0(card));
	FUNC7(FUNC2(card));
	FUNC7(FUNC1(card));
	FUNC17(FUNC0(card));

	FUNC13(&card->conf_mutex);
	FUNC13(&card->discipline_mutex);
	return rc;
}