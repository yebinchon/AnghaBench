#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct qeth_card {TYPE_1__* gdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  QETH_RECOVER_THREAD ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC9(void *ptr)
{
	struct qeth_card *card;
	int rc = 0;

	card = (struct qeth_card *) ptr;
	FUNC0(card, 2, "recover1");
	if (!FUNC7(card, QETH_RECOVER_THREAD))
		return 0;
	FUNC0(card, 2, "recover2");
	FUNC4(&card->gdev->dev,
		"A recovery process has been started for the device\n");
	FUNC1(card->gdev, 1);
	rc = FUNC8(card->gdev);
	if (!rc)
		FUNC3(&card->gdev->dev,
			"Device successfully recovered!\n");
	else {
		FUNC2(card->gdev);
		FUNC4(&card->gdev->dev, "The qeth device driver "
				"failed to recover an error on the device\n");
	}
	FUNC6(card, QETH_RECOVER_THREAD);
	FUNC5(card, QETH_RECOVER_THREAD);
	return 0;
}