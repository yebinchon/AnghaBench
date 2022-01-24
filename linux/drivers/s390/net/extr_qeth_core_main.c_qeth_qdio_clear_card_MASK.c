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
struct TYPE_2__ {int /*<<< orphan*/  state; } ;
struct qeth_card {int /*<<< orphan*/  state; TYPE_1__ qdio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qeth_card*) ; 
 int /*<<< orphan*/  CARD_STATE_DOWN ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*) ; 
 int /*<<< orphan*/  QDIO_FLAG_CLEANUP_USING_CLEAR ; 
 int /*<<< orphan*/  QDIO_FLAG_CLEANUP_USING_HALT ; 
 int /*<<< orphan*/  FUNC2 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct qeth_card*,int,char*,int) ; 
 int /*<<< orphan*/  QETH_QDIO_ALLOCATED ; 
#define  QETH_QDIO_CLEANING 129 
#define  QETH_QDIO_ESTABLISHED 128 
 int FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct qeth_card*,int) ; 

int FUNC8(struct qeth_card *card, int use_halt)
{
	int rc = 0;

	FUNC2(card, 3, "qdioclr");
	switch (FUNC4(&card->qdio.state, QETH_QDIO_ESTABLISHED,
		QETH_QDIO_CLEANING)) {
	case QETH_QDIO_ESTABLISHED:
		if (FUNC1(card))
			rc = FUNC6(FUNC0(card),
				QDIO_FLAG_CLEANUP_USING_HALT);
		else
			rc = FUNC6(FUNC0(card),
				QDIO_FLAG_CLEANUP_USING_CLEAR);
		if (rc)
			FUNC3(card, 3, "1err%d", rc);
		FUNC5(&card->qdio.state, QETH_QDIO_ALLOCATED);
		break;
	case QETH_QDIO_CLEANING:
		return rc;
	default:
		break;
	}
	rc = FUNC7(card, use_halt);
	if (rc)
		FUNC3(card, 3, "2err%d", rc);
	card->state = CARD_STATE_DOWN;
	return rc;
}