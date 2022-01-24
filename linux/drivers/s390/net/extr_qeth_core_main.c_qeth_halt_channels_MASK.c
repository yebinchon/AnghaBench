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
struct qeth_card {int /*<<< orphan*/  data; int /*<<< orphan*/  write; int /*<<< orphan*/  read; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qeth_card*,int,char*) ; 
 int FUNC1 (struct qeth_card*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct qeth_card *card)
{
	int rc1 = 0, rc2 = 0, rc3 = 0;

	FUNC0(card, 3, "haltchs");
	rc1 = FUNC1(card, &card->read);
	rc2 = FUNC1(card, &card->write);
	rc3 = FUNC1(card, &card->data);
	if (rc1)
		return rc1;
	if (rc2)
		return rc2;
	return rc3;
}