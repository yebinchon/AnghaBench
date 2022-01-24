#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ diagass_support; } ;
struct TYPE_11__ {scalar_t__ supported_funcs; } ;
struct TYPE_10__ {scalar_t__ supported_funcs; } ;
struct TYPE_9__ {scalar_t__ supported_funcs; } ;
struct TYPE_8__ {scalar_t__ supported_funcs; } ;
struct TYPE_12__ {TYPE_4__ sbp; TYPE_3__ adp; TYPE_2__ ipa6; TYPE_1__ ipa4; } ;
struct qeth_card {TYPE_7__* gdev; TYPE_6__ info; TYPE_5__ options; scalar_t__ read_or_write_problem; int /*<<< orphan*/  force_alloc_skb; } ;
struct TYPE_14__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC2 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC3 (struct qeth_card*) ; 
 int EINTR ; 
 int ENETDOWN ; 
 int ENOMEM ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  IPA_IPV6 ; 
 int /*<<< orphan*/  IPA_SETADAPTERPARMS ; 
 int /*<<< orphan*/  IPA_SETADP_SET_DIAG_ASSIST ; 
 int /*<<< orphan*/  FUNC4 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC5 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct qeth_card*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  QETH_PROT_IPV4 ; 
 int /*<<< orphan*/  QETH_PROT_IPV6 ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct qeth_card*) ; 
 int FUNC15 (struct qeth_card*) ; 
 int FUNC16 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC17 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC18 (struct qeth_card*) ; 
 scalar_t__ FUNC19 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int FUNC20 (struct qeth_card*) ; 
 int FUNC21 (struct qeth_card*,int) ; 
 int FUNC22 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int FUNC23 (struct qeth_card*) ; 
 int FUNC24 (struct qeth_card*) ; 
 int FUNC25 (struct qeth_card*) ; 
 int FUNC26 (struct qeth_card*) ; 

int FUNC27(struct qeth_card *card, bool *carrier_ok)
{
	int retries = 3;
	int rc;

	FUNC5(card, 2, "hrdsetup");
	FUNC8(&card->force_alloc_skb, 0);
	rc = FUNC26(card);
	if (rc)
		return rc;
retry:
	if (retries < 3)
		FUNC7(2, "Retrying to do IDX activates on device %x.\n",
				 FUNC1(card));
	rc = FUNC21(card, !FUNC4(card));
	FUNC9(FUNC0(card));
	FUNC9(FUNC3(card));
	FUNC9(FUNC2(card));
	FUNC12(FUNC0(card));
	rc = FUNC10(FUNC2(card));
	if (rc)
		goto retriable;
	rc = FUNC10(FUNC3(card));
	if (rc)
		goto retriable;
	rc = FUNC10(FUNC0(card));
	if (rc)
		goto retriable;
retriable:
	if (rc == -ERESTARTSYS) {
		FUNC5(card, 2, "break1");
		return rc;
	} else if (rc) {
		FUNC6(card, 2, "1err%d", rc);
		if (--retries < 0)
			goto out;
		else
			goto retry;
	}
	FUNC14(card);
	FUNC18(card);
	FUNC17(card);

	rc = FUNC15(card);
	if (rc == -EINTR) {
		FUNC5(card, 2, "break2");
		return rc;
	} else if (rc) {
		FUNC6(card, 2, "3err%d", rc);
		if (--retries < 0)
			goto out;
		else
			goto retry;
	}

	rc = FUNC16(card);
	if (rc == -EINTR) {
		FUNC5(card, 2, "break3");
		return rc;
	} else if (rc) {
		FUNC6(card, 2, "4err%d", rc);
		if (--retries < 0)
			goto out;
		else
			goto retry;
	}
	card->read_or_write_problem = 0;
	rc = FUNC20(card);
	if (rc) {
		FUNC6(card, 2, "5err%d", rc);
		goto out;
	}

	rc = FUNC25(card);
	if (rc) {
		FUNC6(card, 2, "6err%d", rc);
		if (rc == -ENETDOWN) {
			FUNC11(&card->gdev->dev, "The LAN is offline\n");
			*carrier_ok = false;
		} else {
			goto out;
		}
	} else {
		*carrier_ok = true;
	}

	card->options.ipa4.supported_funcs = 0;
	card->options.ipa6.supported_funcs = 0;
	card->options.adp.supported_funcs = 0;
	card->options.sbp.supported_funcs = 0;
	card->info.diagass_support = 0;
	rc = FUNC22(card, QETH_PROT_IPV4);
	if (rc == -ENOMEM)
		goto out;
	if (FUNC19(card, IPA_IPV6)) {
		rc = FUNC22(card, QETH_PROT_IPV6);
		if (rc == -ENOMEM)
			goto out;
	}
	if (FUNC19(card, IPA_SETADAPTERPARMS)) {
		rc = FUNC23(card);
		if (rc < 0) {
			FUNC6(card, 2, "7err%d", rc);
			goto out;
		}
	}
	if (FUNC13(card, IPA_SETADP_SET_DIAG_ASSIST)) {
		rc = FUNC24(card);
		if (rc < 0) {
			FUNC6(card, 2, "8err%d", rc);
			goto out;
		}
	}
	return 0;
out:
	FUNC11(&card->gdev->dev, "The qeth device driver failed to recover "
		"an error on the device\n");
	FUNC7(2, "Initialization for device %x failed in hardsetup! rc=%d\n",
			 FUNC1(card), rc);
	return rc;
}