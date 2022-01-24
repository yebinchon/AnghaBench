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
struct TYPE_5__ {int /*<<< orphan*/  cq; } ;
struct TYPE_6__ {int qfmt; int qdioac1; int qdioac2; int qdioac3; int icnt; } ;
struct qeth_card {TYPE_2__ options; TYPE_1__* gdev; TYPE_3__ ssqd; } ;
struct ccw_device {int /*<<< orphan*/  online; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct ccw_device* FUNC0 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*) ; 
 int CHSC_AC1_INITIATE_INPUTQ ; 
 int CHSC_AC3_FORMAT2_CQ_AVAILABLE ; 
 int QDIO_IQDIO_QFMT ; 
 int /*<<< orphan*/  FUNC2 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct qeth_card*,int,char*,int) ; 
 int /*<<< orphan*/  QETH_CQ_NOTAVAILABLE ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ccw_device*) ; 
 int FUNC6 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int FUNC8 (struct ccw_device*,TYPE_3__*) ; 
 int FUNC9 (struct qeth_card*) ; 

__attribute__((used)) static void FUNC10(struct qeth_card *card)
{
	int rc;
	struct ccw_device *ddev;
	int ddev_offline = 0;

	FUNC2(card, 2, "detcapab");
	ddev = FUNC0(card);
	if (!ddev->online) {
		ddev_offline = 1;
		rc = FUNC6(ddev);
		if (rc) {
			FUNC3(card, 2, "3err%d", rc);
			goto out;
		}
	}

	rc = FUNC9(card);
	if (rc) {
		FUNC4(2, "qeth_read_conf_data on device %x returned %i\n",
				 FUNC1(card), rc);
		FUNC3(card, 2, "5err%d", rc);
		goto out_offline;
	}

	rc = FUNC8(ddev, &card->ssqd);
	if (rc)
		FUNC3(card, 2, "6err%d", rc);

	FUNC3(card, 2, "qfmt%d", card->ssqd.qfmt);
	FUNC3(card, 2, "ac1:%02x", card->ssqd.qdioac1);
	FUNC3(card, 2, "ac2:%04x", card->ssqd.qdioac2);
	FUNC3(card, 2, "ac3:%04x", card->ssqd.qdioac3);
	FUNC3(card, 2, "icnt%d", card->ssqd.icnt);
	if (!((card->ssqd.qfmt != QDIO_IQDIO_QFMT) ||
	    ((card->ssqd.qdioac1 & CHSC_AC1_INITIATE_INPUTQ) == 0) ||
	    ((card->ssqd.qdioac3 & CHSC_AC3_FORMAT2_CQ_AVAILABLE) == 0))) {
		FUNC7(&card->gdev->dev,
			"Completion Queueing supported\n");
	} else {
		card->options.cq = QETH_CQ_NOTAVAILABLE;
	}


out_offline:
	if (ddev_offline == 1)
		FUNC5(ddev);
out:
	return;
}