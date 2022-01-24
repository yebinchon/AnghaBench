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
struct lcs_card {scalar_t__ dev; } ;
struct ccwgroup_device {scalar_t__ state; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ CCWGROUP_ONLINE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,struct lcs_card**,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,char*) ; 
 struct lcs_card* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct lcs_card*) ; 
 int /*<<< orphan*/  FUNC5 (struct lcs_card*) ; 
 int /*<<< orphan*/  FUNC6 (struct ccwgroup_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  setup ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

__attribute__((used)) static void
FUNC9(struct ccwgroup_device *ccwgdev)
{
	struct lcs_card *card;

	card = FUNC2(&ccwgdev->dev);
	if (!card)
		return;

	FUNC1(3, setup, "remdev");
	FUNC0(3, setup, &card, sizeof(void*));
	if (ccwgdev->state == CCWGROUP_ONLINE) {
		FUNC6(ccwgdev);
	}
	if (card->dev)
		FUNC8(card->dev);
	FUNC4(card);
	FUNC5(card);
	FUNC3(&ccwgdev->dev, NULL);
	FUNC7(&ccwgdev->dev);
}