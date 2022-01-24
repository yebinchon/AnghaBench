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
 int /*<<< orphan*/  FUNC0 (struct qeth_card*,int,struct qeth_card**,int) ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  QETH_RECOVER_THREAD ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC10(void *ptr)
{
	struct qeth_card *card;
	int rc = 0;

	card = (struct qeth_card *) ptr;
	FUNC1(card, 2, "recover1");
	FUNC0(card, 2, &card, sizeof(void *));
	if (!FUNC8(card, QETH_RECOVER_THREAD))
		return 0;
	FUNC1(card, 2, "recover2");
	FUNC5(&card->gdev->dev,
		"A recovery process has been started for the device\n");
	FUNC2(card->gdev, 1);
	rc = FUNC9(card->gdev);
	if (!rc)
		FUNC4(&card->gdev->dev,
			"Device successfully recovered!\n");
	else {
		FUNC3(card->gdev);
		FUNC5(&card->gdev->dev, "The qeth device driver "
				"failed to recover an error on the device\n");
	}
	FUNC7(card, QETH_RECOVER_THREAD);
	FUNC6(card, QETH_RECOVER_THREAD);
	return 0;
}