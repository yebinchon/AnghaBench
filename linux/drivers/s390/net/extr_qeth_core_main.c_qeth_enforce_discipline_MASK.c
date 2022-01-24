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
struct qeth_card {int dummy; } ;
typedef  enum qeth_discipline_id { ____Placeholder_qeth_discipline_id } qeth_discipline_id ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct qeth_card*) ; 
 scalar_t__ FUNC1 (struct qeth_card*) ; 
 scalar_t__ FUNC2 (struct qeth_card*) ; 
 scalar_t__ FUNC3 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC4 (struct qeth_card*,int,char*) ; 
#define  QETH_DISCIPLINE_LAYER2 129 
#define  QETH_DISCIPLINE_LAYER3 128 
 int QETH_DISCIPLINE_UNDETERMINED ; 
 int FUNC5 (struct qeth_card*) ; 

__attribute__((used)) static enum qeth_discipline_id FUNC6(struct qeth_card *card)
{
	enum qeth_discipline_id disc = QETH_DISCIPLINE_UNDETERMINED;

	if (FUNC1(card) || FUNC2(card))
		disc = QETH_DISCIPLINE_LAYER2;
	else if (FUNC3(card))
		disc = FUNC0(card) ? QETH_DISCIPLINE_LAYER3 :
				      FUNC5(card);

	switch (disc) {
	case QETH_DISCIPLINE_LAYER2:
		FUNC4(card, 3, "force l2");
		break;
	case QETH_DISCIPLINE_LAYER3:
		FUNC4(card, 3, "force l3");
		break;
	default:
		FUNC4(card, 3, "force no");
	}

	return disc;
}