#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct qeth_card {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC2 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct qeth_card*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct qeth_card*) ; 
 int FUNC6 (struct qeth_card*) ; 
 int FUNC7 (struct qeth_card*) ; 
 int FUNC8 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC9 (struct qeth_card*) ; 
 int FUNC10 (struct qeth_card*) ; 
 int FUNC11 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC12 (struct qeth_card*,int) ; 
 int FUNC13 (struct qeth_card*) ; 
 int FUNC14 (struct qeth_card*) ; 
 int FUNC15 (struct qeth_card*) ; 

__attribute__((used)) static int FUNC16(struct qeth_card *card)
{
	int rc;

	FUNC2(card, 2, "mpcinit");

	rc = FUNC10(card);
	if (rc) {
		FUNC3(card, 2, "1err%d", rc);
		return rc;
	}
	rc = FUNC6(card);
	if (rc) {
		FUNC3(card, 2, "2err%d", rc);
		goto out_qdio;
	}
	rc = FUNC7(card);
	if (rc) {
		FUNC3(card, 2, "3err%d", rc);
		goto out_qdio;
	}
	rc = FUNC14(card);
	if (rc) {
		FUNC3(card, 2, "4err%d", rc);
		goto out_qdio;
	}
	rc = FUNC15(card);
	if (rc) {
		FUNC3(card, 2, "5err%d", rc);
		goto out_qdio;
	}
	rc = FUNC5(card);
	if (rc) {
		FUNC3(card, 2, "5err%d", rc);
		goto out_qdio;
	}
	rc = FUNC13(card);
	if (rc) {
		FUNC3(card, 2, "6err%d", rc);
		FUNC9(card);
		goto out_qdio;
	}
	rc = FUNC11(card);
	if (rc) {
		FUNC3(card, 2, "7err%d", rc);
		goto out_qdio;
	}
	rc = FUNC8(card);
	if (rc) {
		FUNC3(card, 2, "8err%d", rc);
		goto out_qdio;
	}

	return 0;
out_qdio:
	FUNC12(card, !FUNC1(card));
	FUNC4(FUNC0(card));
	return rc;
}