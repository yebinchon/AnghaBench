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
struct qeth_card {TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  addr_len; int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qeth_card*) ; 
 int EADDRNOTAVAIL ; 
 scalar_t__ FUNC1 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC2 (struct qeth_card*) ; 
 scalar_t__ FUNC3 (struct qeth_card*) ; 
 scalar_t__ MACHINE_IS_VM ; 
 int /*<<< orphan*/  FUNC4 (struct qeth_card*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct qeth_card*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int FUNC9 (struct qeth_card*) ; 
 int FUNC10 (struct qeth_card*) ; 

__attribute__((used)) static int FUNC11(struct qeth_card *card)
{
	int rc = 0;

	FUNC5(card, 2, "l2reqmac");

	if (MACHINE_IS_VM) {
		rc = FUNC10(card);
		if (!rc)
			goto out;
		FUNC7(2, "z/VM MAC Service failed on device %x: %#x\n",
				 FUNC0(card), rc);
		FUNC6(card, 2, "err%04x", rc);
		/* fall back to alternative mechanism: */
	}

	if (!FUNC2(card)) {
		rc = FUNC9(card);
		if (!rc)
			goto out;
		FUNC7(2, "READ_MAC Assist failed on device %x: %#x\n",
				 FUNC0(card), rc);
		FUNC6(card, 2, "1err%04x", rc);
		/* fall back once more: */
	}

	/* some devices don't support a custom MAC address: */
	if (FUNC1(card) || FUNC3(card))
		return (rc) ? rc : -EADDRNOTAVAIL;
	FUNC8(card->dev);

out:
	FUNC4(card, 2, card->dev->dev_addr, card->dev->addr_len);
	return 0;
}