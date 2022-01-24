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
typedef  int u32 ;
struct qeth_card {TYPE_1__* gdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPA_CMD_ASS_START ; 
 int /*<<< orphan*/  IPA_IPV6 ; 
 int /*<<< orphan*/  IPA_PASSTHRU ; 
 scalar_t__ FUNC0 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC2 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct qeth_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC7 (struct qeth_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct qeth_card *card)
{
	u32 ipv6_data = 3;
	int rc;

	FUNC2(card, 3, "softipv6");

	if (FUNC0(card))
		goto out;

	rc = FUNC6(card, IPA_IPV6, IPA_CMD_ASS_START,
					  &ipv6_data);
	if (rc) {
		FUNC3(&card->gdev->dev,
			"Activating IPv6 support for %s failed\n",
			FUNC1(card));
		return rc;
	}
	rc = FUNC7(card, IPA_IPV6, IPA_CMD_ASS_START,
					     NULL);
	if (rc) {
		FUNC3(&card->gdev->dev,
			"Activating IPv6 support for %s failed\n",
			 FUNC1(card));
		return rc;
	}
	rc = FUNC7(card, IPA_PASSTHRU,
					     IPA_CMD_ASS_START, NULL);
	if (rc) {
		FUNC5(&card->gdev->dev,
			"Enabling the passthrough mode for %s failed\n",
			FUNC1(card));
		return rc;
	}
out:
	FUNC4(&card->gdev->dev, "IPV6 enabled\n");
	return 0;
}