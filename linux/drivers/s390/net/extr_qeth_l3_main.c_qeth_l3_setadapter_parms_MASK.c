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
struct qeth_card {TYPE_1__* gdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPA_SETADP_ALTER_MAC_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct qeth_card*) ; 

__attribute__((used)) static int FUNC4(struct qeth_card *card)
{
	int rc = 0;

	FUNC0(card, 2, "setadprm");

	if (FUNC2(card, IPA_SETADP_ALTER_MAC_ADDRESS)) {
		rc = FUNC3(card);
		if (rc)
			FUNC1(&card->gdev->dev, "Reading the adapter MAC"
				" address failed\n");
	}

	return rc;
}