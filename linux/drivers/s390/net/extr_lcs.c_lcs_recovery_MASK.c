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
struct lcs_card {TYPE_1__* dev; struct ccwgroup_device* gdev; } ;
struct ccwgroup_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  LCS_RECOVERY_THREAD ; 
 int FUNC1 (struct ccwgroup_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct lcs_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct lcs_card*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ccwgroup_device*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  trace ; 

__attribute__((used)) static int
FUNC7(void *ptr)
{
	struct lcs_card *card;
	struct ccwgroup_device *gdev;
        int rc;

	card = (struct lcs_card *) ptr;

	FUNC0(4, trace, "recover1");
	if (!FUNC4(card, LCS_RECOVERY_THREAD))
		return 0;
	FUNC0(4, trace, "recover2");
	gdev = card->gdev;
	FUNC2(&gdev->dev,
		"A recovery process has been started for the LCS device\n");
	rc = FUNC1(gdev, 1);
	rc = FUNC5(gdev);
	if (!rc)
		FUNC6("Device %s successfully recovered!\n",
			card->dev->name);
	else
		FUNC6("Device %s could not be recovered!\n",
			card->dev->name);
	FUNC3(card, LCS_RECOVERY_THREAD);
	return 0;
}