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
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  IPA_CMD_ASS_START ; 
 int /*<<< orphan*/  IPA_FULL_VLAN ; 
 int /*<<< orphan*/  IPA_VLAN_PRIO ; 
 int /*<<< orphan*/  FUNC0 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct qeth_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct qeth_card *card)
{
	int rc = 0;

	FUNC1(card, 3, "strtvlan");

	if (!FUNC4(card, IPA_FULL_VLAN)) {
		FUNC2(&card->gdev->dev,
			"VLAN not supported on %s\n", FUNC0(card));
		return -EOPNOTSUPP;
	}

	rc = FUNC5(card, IPA_VLAN_PRIO,
					  IPA_CMD_ASS_START, NULL);
	if (rc) {
		FUNC3(&card->gdev->dev,
			"Starting VLAN support for %s failed\n",
			FUNC0(card));
	} else {
		FUNC2(&card->gdev->dev, "VLAN enabled\n");
	}
	return rc;
}