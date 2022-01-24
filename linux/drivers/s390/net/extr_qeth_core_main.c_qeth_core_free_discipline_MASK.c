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
struct TYPE_2__ {int /*<<< orphan*/  layer; } ;
struct qeth_card {int /*<<< orphan*/ * discipline; TYPE_1__ options; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct qeth_card*) ; 
 int /*<<< orphan*/  QETH_DISCIPLINE_UNDETERMINED ; 
 int /*<<< orphan*/  qeth_l2_discipline ; 
 int /*<<< orphan*/  qeth_l3_discipline ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct qeth_card *card)
{
	if (FUNC0(card))
		FUNC1(qeth_l2_discipline);
	else
		FUNC1(qeth_l3_discipline);
	card->options.layer = QETH_DISCIPLINE_UNDETERMINED;
	card->discipline = NULL;
}