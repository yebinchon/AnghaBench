#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ isolation; } ;
struct qeth_card {TYPE_1__* gdev; TYPE_2__ options; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qeth_card*) ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  IPA_SETADP_SET_ACCESS_CONTROL ; 
 scalar_t__ ISOLATION_MODE_NONE ; 
 scalar_t__ FUNC1 (struct qeth_card*) ; 
 scalar_t__ FUNC2 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC3 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC6 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct qeth_card*,scalar_t__,int) ; 

int FUNC8(struct qeth_card *card, int fallback)
{
	int rc = 0;

	FUNC3(card, 4, "setactlo");

	if ((FUNC1(card) || FUNC2(card)) &&
	    FUNC6(card, IPA_SETADP_SET_ACCESS_CONTROL)) {
		rc = FUNC7(card,
			card->options.isolation, fallback);
		if (rc) {
			FUNC4(3, "IPA(SET_ACCESS_CTRL(%d) on device %x: sent failed\n",
					 rc, FUNC0(card));
			rc = -EOPNOTSUPP;
		}
	} else if (card->options.isolation != ISOLATION_MODE_NONE) {
		card->options.isolation = ISOLATION_MODE_NONE;

		FUNC5(&card->gdev->dev, "Adapter does not "
			"support QDIO data connection isolation\n");
		rc = -EOPNOTSUPP;
	}
	return rc;
}