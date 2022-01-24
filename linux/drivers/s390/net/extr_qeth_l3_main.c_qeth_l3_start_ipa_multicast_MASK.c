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
struct qeth_card {TYPE_1__* dev; TYPE_2__* gdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  IFF_MULTICAST ; 
 int /*<<< orphan*/  IPA_CMD_ASS_START ; 
 int /*<<< orphan*/  IPA_MULTICASTING ; 
 int /*<<< orphan*/  FUNC0 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct qeth_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct qeth_card *card)
{
	int rc;

	FUNC1(card, 3, "stmcast");

	if (!FUNC4(card, IPA_MULTICASTING)) {
		FUNC2(&card->gdev->dev,
			"Multicast not supported on %s\n",
			FUNC0(card));
		return -EOPNOTSUPP;
	}

	rc = FUNC5(card, IPA_MULTICASTING,
					  IPA_CMD_ASS_START, NULL);
	if (rc) {
		FUNC3(&card->gdev->dev,
			"Starting multicast support for %s failed\n",
			FUNC0(card));
	} else {
		FUNC2(&card->gdev->dev, "Multicast enabled\n");
		card->dev->flags |= IFF_MULTICAST;
	}
	return rc;
}